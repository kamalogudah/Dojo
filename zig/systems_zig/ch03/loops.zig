const std = @import("std");

pub fn main() !void {
    const produce = [_][]const u8{ "carrots", "peas", "dragonfruit", "avocados" };
    const counts = [_]i32{ 32, 96, 7, 0 };

    //for (0..produce.len) |i| {
    //   const name = produce[i];
    //  const count = counts[i];
    //  std.debug.print("{s}: {}\n", .{ name, count });
    // }
// better approach
   // for (produce, counts) |name, count| { //
      //  std.debug.print("{s}: {}\n", .{ name, count });
   // }

    for (produce, counts, 0..) |name, count, i| { //
    std.debug.print("{any}. {any}: {any}\n", .{name, count, i + 1});
}
}
