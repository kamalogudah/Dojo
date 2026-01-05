const std = @import("std");
const user = @import("models/user.zig");
const User = user.User;
const MAX_POWER = user.MAX_POWER;
const print = std.debug.print;

// This code won't compile if `main` isn't `pub` (public)
pub fn main() void {
    //const details = User{
   //     .name = "Goku",
     //   .power = 100000000,
  //  };

    const details = User.init("Goku", 1000000);

    print("{s}'s power is {d}\n", .{ details.name, MAX_POWER });
    //details.diagnose();
    print("{any}\n", .{ details.diagnose()});
}
