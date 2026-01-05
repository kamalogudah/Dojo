const std = @import("std");

// Import C header directly
const c = @cImport({
    @cInclude("./calculator.h");
});

pub fn main() void {
     const print = std.debug.print;


    const a: c_int = 20;
    const b: c_int = 4;

    print("add: {}\n", .{c.add(a, b)});
    print("sub: {}\n", .{c.sub(a, b)});
    print("mul: {}\n", .{c.mul(a, b)});
    print("div: {}\n", .{c.div_int(a, b)});
}
