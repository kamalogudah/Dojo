const std = @import("std");

pub fn main() void {
    const x: i32 = 42;
    std.debug.print("{}\n", .{x});
}
