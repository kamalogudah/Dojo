const std = @import("std");
//
const fibonacci = @import("fibonacci.zig").fibonacci;

pub fn main() void {
    const first = fibonacci(1);
    const second = fibonacci(2);
    const third = fibonacci(3);
    const fourth = fibonacci(48);
    const fifth = fibonacci(49) catch -1;
    std.debug.print("{any} {any} {any} {any} {any}\n", .{ first, second, third, fourth, fifth});
}