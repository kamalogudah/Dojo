const std = @import("std");

pub fn main() !void {
    const counts = [_]i32{ 32, 96, 7, 0 };

    const val = indexOf(&counts, 96);

    std.debug.print("index of {any}\n", .{val});
}


fn indexOf(items: []const i32, value: i32) error{NotFound}!usize {
    return for (items, 0..) |item, i| { //
        if (item == value) {
            break i; //
        }
    } else error.NotFound; //
}
