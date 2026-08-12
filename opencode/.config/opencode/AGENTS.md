<!-- context7 -->

# Documentation

Use Context7 MCP to fetch current documentation whenever the user asks about a library, framework, SDK, API, CLI tool, or cloud service, including well-known technologies such as React, Next.js, Prisma, Express, Tailwind, Django, and Spring Boot.

This applies to:
- API syntax
- configuration
- version-specific behavior
- migrations
- library-specific debugging
- setup instructions
- CLI usage

Use Context7 instead of relying on memory because documentation may have changed.

Do not use Context7 for:
- refactoring
- writing scripts from scratch
- debugging business logic
- code review
- general programming concepts

## Context7 workflow

1. Start with `resolve-library-id` using the library name and the user's question, unless the user provides an exact `/org/project` library ID.
2. Select the best matching library ID based on:
   - exact name match
   - description relevance
   - code snippet count
   - source reputation
   - benchmark score
3. If the results are poor, try an alternative library name or query.
4. Use `query-docs` with the selected library ID and the user's full question.
5. Base the answer on the retrieved documentation.
6. When the user specifies a library version, prefer version-specific documentation.

<!-- context7 -->

# Rust Development

- Do not use `grep` or `rg` through bash to search for Rust definitions or types.
- Prefer connected LSP tools for:
  - symbol search
  - go-to-definition
  - find references
  - type information
- Use bash for Rust project commands when appropriate, especially:
  - `cargo check`
  - `cargo test`
  - `cargo build`
  - `cargo fmt`
  - `cargo clippy`
  - `cargo tree`
  - `cargo metadata`
- Do not use shell text-search tools as a substitute for LSP capabilities when an LSP tool is available.
