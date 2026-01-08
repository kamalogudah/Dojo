const std = @import("std");
const arithmetic = @cImport({
    @cInclude("arithmetic.c");
});

fn add(x: i32, y: i32) i32 {
   return arithmetic.add(x, y);
}

pub fn main() !void {
    const x: i32 = 5;
    const y: i32 = 16;
    const z: i32 = add(x, y);

    const stdout_file = std.fs.File.stdout();

    var stdout_buffer: [1024]u8 = undefined;
    var stdout_writer = stdout_file.writer(&stdout_buffer);
    const stdout = &stdout_writer.interface;


    try stdout.print("{d} + {d} = {d}\n", .{ x, y, z });
    try stdout.flush();
}

test "test add" {
    try std.testing.expectEqual(@as(i32, 21), add(5, 16));
}

test "test increment" {
    try std.testing.expectEqual(@as(i32, 6), arithmetic.increment(5));
}