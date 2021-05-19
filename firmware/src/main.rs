#![no_std]
#![no_main]

use panic_halt as _;

use atsamd_hal::prelude::*;

const BLINK_TIME: u16 = 125;

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
    let leds: &mut [&mut dyn atsamd_hal::hal::digital::v2::OutputPin<
        Error = core::convert::Infallible,
    >] = &mut [
        &mut pins.pb12.into_push_pull_output(),
        &mut pins.pb13.into_push_pull_output(),
        &mut pins.pb14.into_push_pull_output(),
        &mut pins.pb15.into_push_pull_output(),
    ];

    loop {
        for led in leds.iter_mut() {
            delay.delay_ms(BLINK_TIME);
            led.set_high().unwrap();
        }

        for led in leds.iter_mut() {
            delay.delay_ms(BLINK_TIME);
            led.set_low().unwrap();
        }
    }
}
