const std = @import("std");

//
const Point = struct {
    x: i32,
    y: i32,
};

pub fn main() void {
    const a = Point{ .x = 3, .y = -1 }; //
    std.debug.print("x = {}, y = {}\n", .{a.x, a.y}); //
}