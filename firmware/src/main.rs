#![no_std]
#![no_main]

use panic_halt as _;

use atsamd_hal::gpio::v2::J;
use atsamd_hal::prelude::*;
use atsamd_hal::sercom::v2::pads::{IoSet1, Pad0};
use atsamd_hal::sercom::v2::{spi, Sercom1};

#[cortex_m_rt::entry]
fn main() -> ! {
    let mut peripherals = atsamd_hal::target_device::Peripherals::take().unwrap();
    let _core_peripherals = atsamd_hal::target_device::CorePeripherals::take().unwrap();

    let mut clock = atsamd_hal::clock::GenericClockController::with_internal_32kosc(
        peripherals.GCLK,
        &mut peripherals.MCLK,
        &mut peripherals.OSC32KCTRL,
        &mut peripherals.OSCCTRL,
        &mut peripherals.NVMCTRL,
    );

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

    let mut control_spi = spi::Config::new(
        &mut peripherals.MCLK,
        peripherals.SERCOM1,
        control_pads,
        gclk3,
    )
    .length::<spi::lengths::U1>()
    .cpol(spi::Polarity::IdleHigh)
    .cpha(spi::Phase::CaptureOnFirstTransition)
    .baud(100.khz())
    .enable();

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

    // because of course atsamd_hal::prelude includes multiple traits with write()
    atsamd_hal::hal::blocking::spi::Write::write(&mut control_spi, &b"hello, world."[..]).unwrap();

    loop {
        if i2s.intflag.read().txrdy0().bit_is_set() {
            i2s.txdata.write(|w| unsafe { w.data().bits(0x55aa55) });
        }
    }
}
