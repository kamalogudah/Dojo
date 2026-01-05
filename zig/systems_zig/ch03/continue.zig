const std = @import("std");

pub fn main() !void {
    const produce = [_][]const u8{ "carrots", "peas", "dragonfruit", "avocados" };
    const counts = [_]i32{ 32, 96, 7, 0 };

    for (produce, counts) |name, count| {
        if (count == 0) continue;

        std.debug.print("{s}: {}\n", .{ name, count });
    }
}
