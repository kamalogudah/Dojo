const std = @import("std");
const zig_calculator = @import("zig_calculator");

// Import the modules (files in same directory; omit .zig extension)
const add = @import("add.zig");
const sub = @import("sub.zig");

pub fn main() !void {
    // Prints to stderr, ignoring potential errors.
    std.debug.print("All your {s} are belong to us.\n", .{"codebase"});
    try zig_calculator.bufferedPrint();

    
      var stdout_buffer: [1024]u8 = undefined;
    var stdout_writer = std.fs.File.stdout().writer(&stdout_buffer);
    const stdout = &stdout_writer.interface;
    

    const a: i32 = 10;
    const b: i32 = 4;

    try stdout.print("a = {d}, b = {d}\n", .{a, b});
    try stdout.print("add(a, b) = {d}\n", .{add.add(a, b)});
    try stdout.print("sub(a, b) = {d}\n", .{sub.sub(a, b)});
       try stdout.flush();
}

test "simple test" {
    const gpa = std.testing.allocator;
    var list: std.ArrayList(i32) = .empty;
    defer list.deinit(gpa); // Try commenting this out and see if zig detects the memory leak!
    try list.append(gpa, 42);
    try std.testing.expectEqual(@as(i32, 42), list.pop());
}

test "fuzz example" {
    const Context = struct {
        fn testOne(context: @This(), input: []const u8) anyerror!void {
            _ = context;
            // Try passing `--fuzz` to `zig build test` and see if it manages to fail this test case!
            try std.testing.expect(!std.mem.eql(u8, "canyoufindme", input));
        }
    };
    try std.testing.fuzz(Context{}, Context.testOne, .{});
}
