const std = @import("std");

pub fn main() void {
  var name = [4]u8{'G', 'o', 'k', 'u'};
    var user = User{
        .id = 1,
        .power = 100,
        // slice it, [4]u8 -> []u8
		.name = name[0..],
    };
    // user -> &user
    //levelUp(&user);
    user.levelUp();
    std.debug.print("User {d} has power of {d}\n", .{user.id, user.power});
}
// User -> *User
//fn levelUp(user: *User) void {
  //  user.power += 1;
//}

pub const User = struct {
    id: u64,
    power: i32,
    name: []const u8,

    	fn levelUp(user: *User) void {
		user.power += 1;
	}
};
