# AetherWeave - Executor

Rust-based artifact executor. Loads compiled artifacts produced by `aetherweave-compiler` and drives inference or training execution via `dlopen`.

Part of the [AetherWeave](https://github.com/simon-ocloo/aetherweave) project — see that repo for the full architecture, Dockerfile, and test suite.

## Tools

- `aw-execute` — loads a compiled artifact and runs inference (`--mode inference`) or training (`--mode training`)
