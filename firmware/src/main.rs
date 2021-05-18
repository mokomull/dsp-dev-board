#![no_std]
#![no_main]

use panic_halt as _;

use atsamd_hal::prelude::*;

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
    let mut delay = atsamd_hal::delay::Delay::new(core_peripherals.SYST, &mut clock);

    let pins = atsamd_hal::gpio::v2::Pins::new(peripherals.PORT);
    let mut led1 = pins.pb12.into_push_pull_output();

    loop {
        delay.delay_ms(250u16);
        led1.set_high().unwrap();
        delay.delay_ms(250u16);
        led1.set_low().unwrap();
    }
}
