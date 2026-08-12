## Rust

- Use LSP tools for Rust symbol search, type information, go-to-definition, and references.
- Do not use `grep` or `rg` through bash as a substitute for Rust LSP capabilities.
- Use `cargo check` after Rust changes when practical.
- Run targeted tests when changing behavior.
- Run `cargo fmt` when modifying Rust source.
- Use `cargo clippy` when appropriate for validation.
- Prefer existing project abstractions over introducing new ones.
- Preserve existing error-handling and async patterns.
- Do not introduce `unsafe` unless explicitly required.
- Do not change public APIs unless required by the task.
