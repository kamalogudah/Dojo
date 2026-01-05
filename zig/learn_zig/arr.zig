const std = @import("std");

const a = [5]i32{ 1, 2, 3, 4, 5 };

// we already saw this .{...} syntax with structs
// it works with arrays too
const b: [5]i32 = .{ 1, 2, 3, 4, 5 };

// use _ to let the compiler infer the length
const c = [_]i32{ 1, 2, 3, 4, 5 };
const print = std.debug.print;

pub fn main() !void {
    print("First array {any}\n", .{a});
    print("Second array {any}\n", .{b});
    print("Third array {any}\n", .{c});
}
