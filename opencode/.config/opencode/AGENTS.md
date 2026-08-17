# Agent Rules

## General

- Inspect the relevant code before making changes.
- Follow existing project conventions unless the user asks otherwise.
- Prefer the smallest change that solves the problem.
- Do not modify unrelated code.
- Do not invent APIs, types, configuration options, or behavior.
- When uncertain, inspect the code or documentation rather than guessing.
- After making changes, validate them with the most relevant available checks.
- Never claim that code works unless it has been validated or the limitation is explicitly stated.

## Shell

- Use shell commands for inspection, execution, and validation when useful.
- Avoid destructive commands unless explicitly requested.
- Do not delete, reset, or overwrite user work without confirmation.
- Prefer targeted commands over broad repository-wide operations.

## Editing

Before editing:
1. Identify the relevant files.
2. Understand the existing implementation.
3. Determine the smallest required change.

After editing:
1. Review the diff.
2. Run relevant validation.
3. Report what was changed and what was validated.

# Context Compaction Rules
When summarizing conversation context or compacting history:
- **DROP ALL:** Command outputs, `cargo check` stderr dumps, stack traces, and raw search tool outputs.
- **KEEP ONLY:** 
  1. The original goal/task list and current step status.
  2. Modified file paths and their exact updated functions/structs.
  3. Key technical decisions or discovered API requirements (e.g., specific Rust types or imports).
- Summarize findings into concise, bulleted markdown without verbatim log quotes.

