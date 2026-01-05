const std = @import("std");

const Rectangle = struct {
    width: i32,
    height: i32,

    //
    fn quadruple(self: *Rectangle) void {
        self.width = self.width * 2; //
        self.height *= 2; //
    }

    fn size(self: Rectangle) i32 {
        return self.width * self.height;
    }
};

pub fn main() void {
    //
    var rect = Rectangle{ .width = 10, .height = 20 };
    //
    rect.quadruple();
    std.debug.print("quadrupled rect: {}\n", .{rect.size()});
    //
    Rectangle.quadruple(&rect);
    std.debug.print("quadrupled rect again: {}\n", .{rect.size()});
}