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
    // std.options.page_size_min = std.wasm.page_size;

    const optimize = b.standardOptimizeOption(.{});
    // TODO create a new wasm optimize which is release small
    const optimize_wasm = std.builtin.OptimizeMode.ReleaseSmall;

    // const lib_mod = b.createModule(.{
    //     .root_source_file = b.path("src/root.zig"),
    //     .target = target,
    //     .optimize = optimize,
    // });

    const zap_mod = b.dependency("zap", .{
        .target = target,
        .optimize = optimize,
        .openssl = false,
    });

    // const wasm_mod = b.createModule(.{
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

    const wasm_mod = b.createModule(.{
        // _ = b.createModule(.{
        .root_source_file = b.path("src/checks.zig"),
        .target = target_wasm,
        .optimize = optimize_wasm,
    });

    // wasm_mod.addImport("zig_wasm_lib", lib_mod);

    // const lib = b.addLibrary(.{
    //     .linkage = .static,
    //     .name = "zig_wasm",
    //     .root_module = lib_mod,
    // });
    //
    // b.installArtifact(lib);

    // const wasm = b.addwasmcutable(.{
    //     .name = "zig_wasm",
    //     .root_module = wasm_mod,
    // });

    const wasm = b.addExecutable(.{
        .name = "checkerboard",
        .root_module = wasm_mod,
    });

    wasm.global_base = 6560;
    wasm.entry = .disabled;
    wasm.rdynamic = true;
    wasm.import_memory = true;
    wasm.stack_size = std.wasm.page_size;

    wasm.initial_memory = std.wasm.page_size * 2;
    wasm.max_memory = std.wasm.page_size * 2;

    b.installArtifact(wasm);

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

    // const lib_unit_tests = b.addTest(.{
    //     .root_module = lib_mod,
    // });
    //
    // const run_lib_unit_tests = b.addRunArtifact(lib_unit_tests);
    //
    // const wasm_unit_tests = b.addTest(.{
    //     .root_module = wasm_mod,
    // });
    //
    // const run_wasm_unit_tests = b.addRunArtifact(wasm_unit_tests);
    //
    // const test_step = b.step("test", "Run unit tests");
    // test_step.dependOn(&run_lib_unit_tests.step);
    // test_step.dependOn(&run_wasm_unit_tests.step);
}
