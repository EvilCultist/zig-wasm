const std = @import("std");

// extern fn consoleLog(arg: []const u8) void;
extern fn consoleLog(arg: u8) void;

pub export fn add(a: u8, b: u8) u8 {
    // std.debug.print("{any}", .{a + b});
    return a + b;
}

pub export fn add2(a: u8, b: u8) u8 {
    // std.debug.print("{any}", .{a + b});
    return a + b;
}

pub export fn checkCall() void {
    // consoleLog("hello world!!");
    consoleLog(32);
}
