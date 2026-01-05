const std = @import("std");

//
const animal_noises = struct {
    //
    fn moo() void {
        std.debug.print("moo!\n", .{});
    }

    fn woof() void {
        std.debug.print("woof!\n", .{});
    }
};

pub fn main() void {
    //
    animal_noises.moo();
    animal_noises.woof();
}