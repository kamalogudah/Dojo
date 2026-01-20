pub const has_hal: bool = true;
pub const has_board: bool = true;
pub const cpu_name: []const u8 = "cortex_m0plus";
pub const chip_name: []const u8 = "RP2040";
pub const board_name: ?[]const u8 = "RaspberryPi Pico";
pub const @"build.MicroBuild(.{ .esp = false, .gd32 = false, .atsam = false, .avr = false, .nrf5x = false, .lpc = false, .mcx = false, .rp2xxx = true, .stm32 = false, .ch32v = false }).add_firmware.EndOfStack" = struct {
    address: ?usize = null,
    symbol_name: ?[]const u8 = null,
};
pub const end_of_stack: @"build.MicroBuild(.{ .esp = false, .gd32 = false, .atsam = false, .avr = false, .nrf5x = false, .lpc = false, .mcx = false, .rp2xxx = true, .stm32 = false, .ch32v = false }).add_firmware.EndOfStack" = .{
    .address = 537133056,
    .symbol_name = null,
};
pub const ram_image: bool = false;
