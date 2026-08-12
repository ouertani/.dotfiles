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

