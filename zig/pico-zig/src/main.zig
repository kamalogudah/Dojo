const std = @import("std");
const microzig = @import("microzig");
const rp2040 = microzig.hal;
const time = rp2040.time;

pub fn main() !void {
    // Initialize the LED pin (GPIO 0 on Pico W for the wireless LED)
    const led_pin = rp2040.gpio.num(0);
    led_pin.set_function(.sio);
    led_pin.set_direction(.out);

    while (true) {
        led_pin.put(1);
        time.sleep_ms(500);
        led_pin.put(0);
        time.sleep_ms(500);
    }
}