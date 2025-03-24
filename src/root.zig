const std = @import("std");

// extern fn consoleLog(arg: []const u8) void;
extern fn consoleLog(arg: u32) void;

pub export fn add(a: u32, b: u32) u32 {
    // std.debug.print("{any}", .{a + b});
    return a + b;
}

pub export fn add2(a: u32, b: u32) u32 {
    // std.debug.print("{any}", .{a + b});
    return a + b;
}

pub export fn checkCall() void {
    // consoleLog("hello world!!");
    consoleLog(32);
}
