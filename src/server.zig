const std = @import("std");
const zap = @import("zap");

fn on_request(r: zap.Request) void {
    // zap.mimetypeRegister("wasm", "application/wasm");

    if (r.path) |the_path| {
        std.debug.print("requested: {s}\n", .{the_path});
        if (std.mem.eql(u8, the_path, "/source.js")) {
            _ = (r.sendFile("web/source.js")) catch |err| std.debug.print("{any}", .{err});
            return;
        } else if (std.mem.eql(u8, the_path, "/index.html") or std.mem.eql(u8, the_path, "/")) {
            _ = (r.sendFile("web/index.html")) catch |err| std.debug.print("{any}", .{err});
            return;
        } else if (std.mem.eql(u8, the_path, "/wasi-minimal-min.js")) {
            _ = (r.sendFile("web/wasi-minimal-min.js")) catch |err| std.debug.print("{any}", .{err});
            return;
        } else if (std.mem.eql(u8, the_path, "/checkerboard.wasm")) {
            // _ = (r.setContentType("application/wasm")) catch |err| std.debug.print("{any}", .{err});
            _ = (r.sendFile("zig-out/bin/checkerboard.wasm")) catch |err| std.debug.print("{any}", .{err});
            return;
        } else if (std.mem.eql(u8, the_path, "/favicon.ico")) {
            _ = (r.sendFile("web/favicon.ico")) catch |err| std.debug.print("{any}", .{err});
            return;
        } else {
            std.debug.print("not found\n", .{});
        }
    }
    if (r.sendFile("web/404NotFound.html")) {
        std.debug.print("send html\n", .{});
    } else |err| {
        std.debug.print("{any}\n", .{err});
    }
}

pub fn main() !void {
    var listener = zap.HttpListener.init(.{
        .port = 3000,
        .on_request = on_request,
        .log = true,
        .max_clients = 100000,
    });
    try listener.listen();

    std.debug.print("Listening on 0.0.0.0:3000\n", .{});

    zap.mimetypeRegister("wasm", "application/wasm");

    zap.start(.{
        .threads = 4,
        .workers = 1, // 1 worker enables sharing state between threads
    });

    // zap.mimetypeRegister(".wasm", "application/wasm");
}
