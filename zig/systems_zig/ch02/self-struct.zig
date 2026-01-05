const std = @import("std");

const Rectangle = struct {
    const Self = @This();

    width: i32,
    height: i32,

    //
    fn size(self: Self) i32 {
        return self.width * self.height;
    }
};

pub fn main() void {
    const rect = Rectangle{ .width = 20, .height = 30 };
    //
    const rect_size = rect.size();
    std.debug.print("rect size using method syntax: {}\n", .{rect_size});
    //
    const rect_size2 = Rectangle.size(rect);
    std.debug.print("rect size using function syntax: {}\n", .{rect_size2});
}