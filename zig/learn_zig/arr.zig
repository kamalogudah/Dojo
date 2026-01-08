const std = @import("std");

const a = [5]i32{ 1, 2, 3, 4, 5 };

// we already saw this .{...} syntax with structs
// it works with arrays too
const b: [5]i32 = .{ 1, 2, 3, 4, 5 };

// use _ to let the compiler infer the length
const c = [_]i32{ 1, 2, 3, 4, 5 };

const co = [5]u32{ 1, 2, 3, 4, 5 };
const print = std.debug.print;

fn contains(haystack: []const u32, needle: u32) bool {
	for (haystack) |value| {
		if (needle == value) {
			return true;
		}
	}
	return false;
}

pub fn main() !void {
    print("First array {any}\n", .{a});
    print("Second array {any}\n", .{b});
    print("Third array {any}\n", .{c});
    const containsOne = contains(&co, 10);
     print("Third array contains one {any}\n", .{containsOne});
}
