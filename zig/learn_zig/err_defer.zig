const std = @import("std");
const Allocator = std.mem.Allocator;

pub const Player = struct {
    id: usize,
    name: []const u8,
    score: i32,

    pub fn init(id: usize, name: []const u8) Player {
        return .{
            .id = id,
            .name = name,
            .score = 0,
        };
    }
};


pub const Move = struct {
    player_id: usize,
    timestamp: i64,
    action: []const u8,

    pub fn init(player_id: usize, action: []const u8) Move {
        return .{
            .player_id = player_id,
            .timestamp = std.time.timestamp(),
            .action = action,
        };
    }
};


pub const Game = struct {
	players: []Player,
	history: []Move,
	allocator: Allocator,



	fn init(allocator: Allocator, player_count: usize) !Game {
		var players = try allocator.alloc(Player, player_count);
		errdefer allocator.free(players);

		// store 10 most recent moves per player
		var history = try allocator.alloc(Move, player_count * 10);

		// This isn't strickly necessary. Nothing following the above alloc
		// can fail, so this errdefer will never be executed. HOWEVER, if the
		// function changes and fallible code is added, it could be easy to forget
		// adding this.
		errdefer allocator.free(history);

		return .{
			.players = players,
			.history = history,
			.allocator = allocator,
		};
	}

	fn deinit(game: *Game) void {
		const allocator = game.allocator;
		allocator.free(game.players);
		allocator.free(game.history);
	}
};
