const std = @import("std");

pub fn main() void {
	const n = Number{ .float = 7.8};
	std.debug.print("{d}\n", .{n.float});

    const no = Number{ .nan = {} };
	std.debug.print("{any}\n", .{no.nan});
}

const Number = union {
	int: i64,
	float: f64,
	nan: void,
};