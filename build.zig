const std = @import("std");

const std_options: std.Options = .{
    .enable_segfault_handler = true,
    .page_size_min = std.wasm.Limits.min,
    // .page_size_min = 96,
    // .page_size_min = "wrong type entirely",
};

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const target_wasm = b.resolveTargetQuery(.{
        .cpu_arch = .wasm32, //std.Target.Cpu.Arch
        .os_tag = .freestanding,
    });

    const optimize = b.standardOptimizeOption(.{});
    const optimize_wasm = std.builtin.OptimizeMode.ReleaseSmall;

    const zap_mod = b.dependency("zap", .{
        .target = target,
        .optimize = optimize,
        .openssl = false,
    });

    // const checks_mod = b.createModule(.{
    _ = b.createModule(.{
        .root_source_file = b.path("src/main.zig"),
        .target = target,
        .optimize = optimize,
    });

    const server_mod = b.createModule(.{
        .root_source_file = b.path("src/server.zig"),
        .target = target,
        .optimize = optimize,
    });

    const checks_mod = b.createModule(.{
        // _ = b.createModule(.{
        .root_source_file = b.path("src/checks.zig"),
        .target = target_wasm,
        .optimize = optimize_wasm,
    });

    const root_mod = b.createModule(.{
        .root_source_file = b.path("src/root.zig"),
        .target = target_wasm,
        .optimize = optimize_wasm,
    });

    const checks = b.addExecutable(.{
        .name = "checkerboard",
        .root_module = checks_mod,
    });

    checks.global_base = 6560;
    checks.entry = .disabled;
    checks.rdynamic = true;
    checks.import_memory = true;
    checks.stack_size = std.wasm.page_size;

    checks.initial_memory = std.wasm.page_size * 2;
    checks.max_memory = std.wasm.page_size * 2;

    b.installArtifact(checks);

    const root = b.addExecutable(.{
        .name = "root",
        .root_module = root_mod,
    });

    root.global_base = 6560;
    root.entry = .disabled;
    root.rdynamic = true;
    root.import_memory = true;
    root.stack_size = std.wasm.page_size;

    root.initial_memory = std.wasm.page_size * 2;
    root.max_memory = std.wasm.page_size * 2;

    b.installArtifact(root);

    const server = b.addExecutable(.{
        .name = "server",
        .root_module = server_mod,
    });

    server.root_module.addImport("zap", zap_mod.module("zap"));

    b.installArtifact(server);

    const run_cmd = b.addRunArtifact(server);

    run_cmd.step.dependOn(b.getInstallStep());

    if (b.args) |args| {
        run_cmd.addArgs(args);
    }

    const run_step = b.step("run", "Run the app");
    run_step.dependOn(&run_cmd.step);
}
