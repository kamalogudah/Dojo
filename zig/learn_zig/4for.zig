const std = @import("std");

fn indexOf(haystack: []const u32, needle: u32) ?usize {
	for (haystack, 0..) |value, i| {
		if (needle == value) {
			return i;
		}
	}
	return null;
}

pub fn main() !void {
for (0..10) |i| {
	std.debug.print("{d}\n", .{i});
}

const some = [5]u32{ 1, 2, 3, 4, 5 };
const ind = 5;
const indexYa = indexOf(&some, ind);

std.debug.print("Index ya {} ni {any}\n", .{ind, indexYa});
}