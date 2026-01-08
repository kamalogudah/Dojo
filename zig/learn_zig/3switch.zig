const std = @import("std");
fn anniversaryName(years_married: u16) []const u8 {
	switch (years_married) {
		1 => return "paper",
		2 => return "cotton",
		3 => return "leather",
		4 => return "flower",
		5 => return "wood",
		6 => return "sugar",
        else => return "no more gifts for you",
	}
}

fn arrivalTimeDesc(minutes: u16, is_late: bool) []const u8 {
	switch (minutes) {
		0 => return "arrived",
		1, 2 => return "soon",
		3...5 => return "no more than 5 minutes",
		else => {
			if (!is_late) {
				return "sorry, it'll be a while";
			}
			// todo, something is very wrong
			return "never";
		},
	}
}

pub fn main() !void {
    const name = anniversaryName(9);
    std.debug.print("Your anniversary name is  {s}\n", .{name});
      const arrived = arrivalTimeDesc(9, false);
    std.debug.print("Your arrival time is  {s}\n", .{arrived});

}