const std = @import("std");
const a = [_]i32{ 1, 2, 3, 4, 5 };
const b: []const i32 = a[1..4];
const print = std.debug.print;

pub fn main() !void {
    // because `end` is declared var, it isn't compiled-time known
    var end: usize = 3;
    // but because it's a `var` we need to mutate it, else the compiler
    // will insist we make it `const`.
    end += 1;
    const c = a[1..end];
    print("Fancy slice {any}\n", .{b});
    print("Proper slice {any}\n", .{c});
    print("TYpe of b {any}\n", .{@TypeOf(b)});
    print("TYpe of c {any}\n", .{@TypeOf(c)});
}
