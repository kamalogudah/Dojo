const std = @import("std");

pub fn sub(a: i32, b: i32) i32 {
    return a - b;
}

test "sub works" {
    try std.testing.expect(sub(5, 3) == 2);
    try std.testing.expect(sub(0, 4) == -4);
}