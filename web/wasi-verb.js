import { readFile } from "node:fs/promises";
import process from "node:process";
import { WASI } from "./wasi-minimal-min.js"; // https://gitlab.com/-/snippets/4782260/raw/main/wasi-minimal.js
import * as fs from "node:fs";
try {
  const [embeddedModule, pluginModule] = await Promise.all([
    compileModule("./nm_javy_permutations.wasm"),
    compileModule("./plugin.wasm"),
  ]);
  const result = await runJavy(embeddedModule, pluginModule);
} catch (e) {
  process.stdout.write(e.message, "utf8");
} finally {
  process.exit();
}
async function compileModule(wasmPath) {
  const bytes = await readFile(new URL(wasmPath, import.meta.url));
  return WebAssembly.compile(bytes);
}
async function runJavy(embeddedModule, pluginModule) {
  try {
    let wasi = new WASI({
      env: {},
      args: [],
      fds: [
        {
          type: 2,
          handle: fs,
        },
        {
          type: 2,
          handle: fs,
        },
        {
          type: 2,
          handle: fs,
        },
      ],
    });

    const pluginInstance = await WebAssembly.instantiate(
      pluginModule,
      { "wasi_snapshot_preview1": wasi.exports },
    );
    const instance = await WebAssembly.instantiate(embeddedModule, {
      "javy_quickjs_provider_v3": pluginInstance.exports,
    });

    wasi.memory = pluginInstance.exports.memory;
    instance.exports._start();
    return;
  } catch (e) {
    if (e instanceof WebAssembly.RuntimeError) {
      if (e) {
        throw new Error(e);
      }
    }
    throw e;
  }
}
