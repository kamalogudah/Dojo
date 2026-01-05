const std = @import("std");

pub fn main() void {
    const arr = [_]i32{ 11, 22, 33, 44, 55 };
    const range = arr[1..4]; //

    std.debug.print("range: {any}\n", .{range});
}