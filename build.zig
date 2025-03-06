const std = @import("std");

const std_options: std.Options = .{
    .enable_segfault_handler = true,
    .page_size_min = std.wasm.Limits.min,
    // .page_size_min = 96,
    // .page_size_min = "wrong type entirely",
};

pub fn build(b: *std.Build) void {
    // const target = b.standardTargetOptions(.{});
    const target = b.resolveTargetQuery(.{
        .cpu_arch = .wasm32, //std.Target.Cpu.Arch
        .os_tag = .wasi,
    });
    // std.options.page_size_min = std.wasm.page_size;

    const optimize = b.standardOptimizeOption(.{});

    // const lib_mod = b.createModule(.{
    //     .root_source_file = b.path("src/root.zig"),
    //     .target = target,
    //     .optimize = optimize,
    // });

    const exe_mod = b.createModule(.{
        // _ = b.createModule(.{
        .root_source_file = b.path("src/main.zig"),
        .target = target,
        .optimize = optimize,
    });

    // const exe_mod = b.createModule(.{
    _ = b.createModule(.{
        .root_source_file = b.path("src/checks.zig"),
        .target = target,
        .optimize = optimize,
    });

    // exe_mod.addImport("zig_wasm_lib", lib_mod);

    // const lib = b.addLibrary(.{
    //     .linkage = .static,
    //     .name = "zig_wasm",
    //     .root_module = lib_mod,
    // });
    //
    // b.installArtifact(lib);

    // const exe = b.addExecutable(.{
    //     .name = "zig_wasm",
    //     .root_module = exe_mod,
    // });

    const exe = b.addExecutable(.{
        .name = "checkerboard",
        .root_module = exe_mod,
    });

    exe.global_base = 6560;
    exe.entry = .disabled;
    exe.rdynamic = true;
    exe.import_memory = true;
    exe.stack_size = std.wasm.page_size;

    exe.initial_memory = std.wasm.page_size * 2;
    exe.max_memory = std.wasm.page_size * 2;

    b.installArtifact(exe);

    // const run_cmd = b.addRunArtifact(exe);
    //
    // run_cmd.step.dependOn(b.getInstallStep());
    //
    // if (b.args) |args| {
    //     run_cmd.addArgs(args);
    // }
    //
    // const run_step = b.step("run", "Run the app");
    // run_step.dependOn(&run_cmd.step);

    // const lib_unit_tests = b.addTest(.{
    //     .root_module = lib_mod,
    // });
    //
    // const run_lib_unit_tests = b.addRunArtifact(lib_unit_tests);
    //
    // const exe_unit_tests = b.addTest(.{
    //     .root_module = exe_mod,
    // });
    //
    // const run_exe_unit_tests = b.addRunArtifact(exe_unit_tests);
    //
    // const test_step = b.step("test", "Run unit tests");
    // test_step.dependOn(&run_lib_unit_tests.step);
    // test_step.dependOn(&run_exe_unit_tests.step);
}
