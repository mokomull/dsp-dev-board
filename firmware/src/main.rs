#![no_std]
#![no_main]

use panic_halt as _;

use atsamd_hal::hal as embedded_hal;

use atsamd_hal::gpio::v2::J;
use atsamd_hal::prelude::*;
use atsamd_hal::sercom::v2::pads::{IoSet1, Pad0};
use atsamd_hal::sercom::v2::{spi, Sercom1};

use wm8731::WM8731;

#[cortex_m_rt::entry]
fn main() -> ! {
    let mut peripherals = atsamd_hal::target_device::Peripherals::take().unwrap();
    let core_peripherals = atsamd_hal::target_device::CorePeripherals::take().unwrap();

    let mut clock = atsamd_hal::clock::GenericClockController::with_internal_32kosc(
        peripherals.GCLK,
        &mut peripherals.MCLK,
        &mut peripherals.OSC32KCTRL,
        &mut peripherals.OSCCTRL,
        &mut peripherals.NVMCTRL,
    );
    let delay = atsamd_hal::delay::Delay::new(core_peripherals.SYST, &mut clock);

    // assume that with_internal_32kosc() configured DPLL0 for 120MHz; divide that down a bit and
    // attach it to GCLK3 (chosen arbitrarily)
    let gclk3 = clock
        .configure_gclk_divider_and_source(
            atsamd_hal::clock::ClockGenId::GCLK3,
            3,
            atsamd_hal::clock::ClockSource::DPLL0,
            false,
        )
        .expect("could not configure gclk3");

    // and map wire that to the SERCOM1 core clock (slow clock is only for specific I2C things)
    clock
        .sercom1_core(&gclk3)
        .expect("could not select sercom2_core");

    // enable the 8MHz crystal oscillator on the board
    peripherals.OSCCTRL.xoscctrl[1].write(|w| {
        w.startup().cycle16();
        w.swben().clear_bit();
        w.cfden().clear_bit();
        w.enalc().clear_bit();
        unsafe {
            w.imult().bits(3);
            w.iptat().bits(2);
        }
        w.lowbufgain().clear_bit();
        w.ondemand().clear_bit();
        w.runstdby().clear_bit();
        w.xtalen().set_bit();
        w.enable().set_bit();
        w
    });
    while peripherals.OSCCTRL.status.read().xoscrdy1().bit_is_clear() {}

    // use FDPLL1 for generating the I2S clock
    // 8MHz / 50 * 768 = 122.88MHz
    // which will be divided by 2 by GCLK and by 5 by I2S to generate 12.288MHz.
    peripherals.OSCCTRL.dpll[1].dpllratio.write(|w| {
        unsafe {
            w.ldrfrac().bits(0);
            w.ldr().bits(767); // f_CLK_DPLL1 = f_CKR * (LDR + 1 + LDRFRAC/2) per the datasheet
        }
        w
    });
    peripherals.OSCCTRL.dpll[1].dpllctrlb.write(|w| {
        unsafe {
            w.div().bits(24); // f_DIV = f_XOSC / (2 * (DIV + 1)) per the datasheet, and 2*(24+1) = 50
            w.dcoen().clear_bit();
            w.refclk().xosc1();
            w.wuf().clear_bit();
        }
        w
    });
    peripherals.OSCCTRL.dpll[1].dpllctrla.write(|w| {
        w.enable().set_bit();
        w.ondemand().clear_bit();
        w
    });
    while peripherals.OSCCTRL.dpll[1].dpllsyncbusy.read().bits() != 0 {}
    while peripherals.OSCCTRL.dpll[1]
        .dpllstatus
        .read()
        .lock()
        .bit_is_clear()
    {}

    // set up GCLK4 (chosen arbitrarily) to be DPLL1 / 2 = 61.44MHz
    unsafe {
        let gclk = &*atsamd_hal::target_device::GCLK::ptr();
        gclk.genctrl[4].write(|w| {
            w.div().bits(2);
            w.divsel().clear_bit();
            w.genen().set_bit();
            w.src().dpll1();
            w
        });

        // and set that as the I2S clock
        gclk.pchctrl[43].write(|w| {
            w.gen().gclk4();
            w.chen().set_bit();
            w
        });
    }

    // enable the I2S peripheral
    peripherals.MCLK.apbdmask.modify(|_r, w| w.i2s_().set_bit());

    let pins = atsamd_hal::gpio::v2::Pins::new(peripherals.PORT);

    let control_pads = spi::Pads::<Sercom1, IoSet1>::new()
        .data_out::<Pad0, _>(pins.pa16)
        .sclk(pins.pa17);

    let control_spi = spi::Config::new(
        &mut peripherals.MCLK,
        peripherals.SERCOM1,
        control_pads,
        gclk3,
    )
    .length::<spi::lengths::U1>()
    .cpol(spi::Polarity::IdleHigh)
    .cpha(spi::Phase::CaptureOnSecondTransition)
    .baud(100.khz())
    .enable();

    let control_csb = pins.pa18.into_push_pull_output();

    let mut control = Control {
        spi: control_spi,
        not_cs: control_csb,
        delay,
    };

    fn final_power_settings(w: &mut wm8731::power_down::PowerDown) {
        w.power_off().power_on();
        w.clock_output().power_off();
        w.oscillator().power_off();
        w.output().power_on();
        w.dac().power_on();
        w.adc().power_on();
        w.mic().power_off();
        w.line_input().power_on();
    }

    control.set_register(WM8731::reset());
    control.set_register(WM8731::power_down(|w| {
        final_power_settings(w);
        w.output().power_off();
    }));

    // disable input mute, set to 0dB gain
    control.set_register(WM8731::left_line_in(|w| {
        w.both().disable();
        w.mute().disable();
        w.volume().nearest_dB(0);
    }));

    // sidetone off; DAC selected; bypass off; line input selected; mic muted; mic boost off
    control.set_register(WM8731::analog_audio_path(|w| {
        w.sidetone().disable();
        w.dac_select().select();
        w.bypass().disable();
        w.input_select().line_input();
        w.mute_mic().enable();
        w.mic_boost().disable();
    }));

    // disable DAC mute, deemphasis for 48k
    control.set_register(WM8731::digital_audio_path(|w| {
        w.dac_mut();
        w.deemphasis().frequency_48();
    }));

    // nothing inverted, slave, 24-bits, MSB format
    control.set_register(WM8731::digital_audio_interface_format(|w| {
        w.bit_clock_invert().no_invert();
        w.master_slave().slave();
        w.left_right_dac_clock_swap().right_channel_dac_data_right();
        w.left_right_phase().data_when_daclrc_low();
        w.bit_length().bits_24();
        w.format().left_justified();
    }));

    // no clock division, normal mode, 48k
    control.set_register(WM8731::sampling(|w| {
        w.core_clock_divider_select().normal();
        w.base_oversampling_rate().normal_256();
        w.sample_rate().adc_48();
        w.usb_normal().normal();
    }));

    // set active
    control.set_register(WM8731::active().active());

    // enable output
    control.set_register(WM8731::power_down(final_power_settings));

    let _mck = pins.pa08.into_alternate::<J>();
    let _sck = pins.pa10.into_alternate::<J>();
    let _dac = pins.pa11.into_alternate::<J>();
    let _ws = pins.pa09.into_alternate::<J>();

    let i2s = peripherals.I2S;
    i2s.clkctrl[0].write(|w| {
        unsafe {
            w.mckoutdiv().bits(4); // divided by MCKOUTDIV+1
            w.mckdiv().bits(19); // divided by MCKDIV+1; 61.44/20 = 3.072MHz bit clock
        }
        w.mcken().set_bit();
        w.mcksel().gclk();
        w.sckoutinv().clear_bit();
        w.scksel().mckdiv();
        w.fsoutinv().clear_bit();
        w.fsinv().clear_bit();
        w.fssel().sckdiv();
        w.bitdelay().lj();
        w.fswidth().slot();
        unsafe {
            w.nbslots().bits(1);
        }
        w.slotsize()._32();
        w
    });

    i2s.txctrl.write(|w| {
        w.mono().mono();
        w.wordadj().right();
        w.datasize()._24();
        w.slotadj().left();
        w.txsame().same();
        w.txdefault().zero();
        w
    });

    i2s.ctrla.write(|w| {
        w.cken0().set_bit();
        w.txen().set_bit();
        w.enable().set_bit();
        w
    });

    let samples: [u32; 48] = [
        0, 1094932, 2171131, 3210180, 4194303, 5106660, 5931640, 6655129, 7264746, 7750062,
        8102772, 8316841, 8388607, 8316841, 8102772, 7750062, 7264746, 6655129, 5931640, 5106660,
        4194303, 3210180, 2171131, 1094932, 0, 15682284, 14606085, 13567036, 12582913, 11670556,
        10845576, 10122087, 9512470, 9027154, 8674444, 8460375, 8388609, 8460375, 8674444, 9027154,
        9512470, 10122087, 10845576, 11670556, 12582913, 13567036, 14606085, 15682284,
    ];

    loop {
        for sample in &samples {
            while i2s.intflag.read().txrdy0().bit_is_clear() {}
            i2s.txdata.write(|w| unsafe { w.data().bits(*sample) });
        }
    }
}

struct Control<SPI, GPIO, DELAY> {
    spi: SPI,
    not_cs: GPIO,
    delay: DELAY,
}

impl<SPI, GPIO, DELAY> Control<SPI, GPIO, DELAY>
where
    SPI: embedded_hal::blocking::spi::Write<u8>,
    SPI::Error: core::fmt::Debug,
    GPIO: embedded_hal::digital::v2::OutputPin,
    GPIO::Error: core::fmt::Debug,
    DELAY: embedded_hal::blocking::delay::DelayUs<u8>,
{
    fn set_register(&mut self, register: wm8731::Register) {
        self.not_cs.set_low().unwrap();

        embedded_hal::blocking::spi::Write::write(
            &mut self.spi,
            &[
                (register.address << 1) | ((register.value & 0x100) >> 8) as u8,
                (register.value & 0xff) as u8,
            ],
        )
        .expect("SPI write failed");

        self.not_cs.set_high().unwrap();

        // t_CSH is minimum 20ns per the datasheet, so 1µs should be fine
        self.delay.delay_us(1);
    }
}
