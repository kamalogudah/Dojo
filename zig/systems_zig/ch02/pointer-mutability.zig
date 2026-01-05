const std = @import("std");

pub fn main() void {
    //
    var a: i32 = 123;
    const b: i32 = 456;

    const a_ptr = &a; //
    const b_ptr = &b; //

    a_ptr.* = 25; //
    //b_ptr.* = 50; //

    a = b_ptr.*; //

    std.debug.print("a = {}, b = {}\n", .{a, b});
}