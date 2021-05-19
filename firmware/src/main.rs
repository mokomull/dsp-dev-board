#![no_std]
#![no_main]

use panic_halt as _;

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

    // because of course atsamd_hal::prelude includes multiple traits with write()
    atsamd_hal::hal::blocking::spi::Write::write(&mut control_spi, &b"hello, world."[..]).unwrap();

    loop {
        cortex_m::asm::wfi();
    }
}
