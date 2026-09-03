# AetherWeave - Executor

Rust-based artifact executor. Loads compiled artifacts produced by `aetherweave-compiler` and drives inference or training execution via `dlopen`.

Part of the [AetherWeave](https://github.com/simon-ocloo/aetherweave) project — see that repo for the full architecture, Dockerfile, and test suite.

## Tools

- `aw-execute` — loads a compiled artifact and runs inference (`--mode inference`) or training (`--mode training`)

## Artifact format

The artifact format contract is defined by [`docs/artifact.schema.json`](https://github.com/simon-ocloo/aetherweave/blob/main/docs/artifact.schema.json) in the orchestration repo. The executor validates every artifact it reads against an embedded copy of this schema before deserializing.
