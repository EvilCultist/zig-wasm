//! By convention, root.zig is the root source file when making a library. If
//! you are making an executable, the convention is to delete this file and
//! start with main.zig instead.
const std = @import("std");

extern fn consoleLog(arg: []const u8) void;
// extern fn consoleLog(arg: u32) void;

pub export fn add(a: i32, b: i32) i32 {
    std.debug.print("{any}", .{a + b});
    return a + b;
}

pub export fn add2(a: i32, b: i32) i32 {
    std.debug.print("{any}", .{a + b});
    return a + b;
}

pub export fn checkCall() void {
    consoleLog("hello world!!");
    // consoleLog(32);
}
