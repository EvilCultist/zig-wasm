const std = @import("std");

const context = struct {};
// extern fn consoleLog(arg: []const u8) void;
extern fn consoleLog(arg: u8) void;
extern var ctx: ?context;

pub export fn checkCall() void {
    // consoleLog("hello world!!");
    consoleLog(32);
}
