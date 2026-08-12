# Workflow

## Understand

1. Identify the user's requested outcome.
2. Inspect the relevant code before proposing or making changes.
3. Follow existing architecture, abstractions, and conventions.
4. Use LSP for code navigation and symbol/type information.
5. Use Context7 when current library or API documentation is needed.

## Plan

- For simple changes, proceed directly.
- For multi-file or architectural changes, create a short implementation plan.
- Keep the plan focused on concrete changes.
- Do not modify code while still investigating the problem unless necessary.

## Implement

- Make the smallest change that solves the task.
- Reuse existing abstractions before introducing new ones.
- Avoid speculative refactoring.
- Do not modify unrelated files.
- Do not introduce dependencies unless required.
- Preserve existing behavior outside the requested change.

## Validate

After implementation:

1. Review the diff.
2. Check for unintended changes.
3. Run the most relevant validation.
4. If validation fails because of the change, investigate and fix it.
5. Re-run validation after fixing.

Prefer targeted validation over unnecessarily expensive repository-wide checks.

## Debugging

- Reproduce the problem when practical.
- Identify the root cause before changing code.
- Prefer fixing the root cause over masking symptoms.
- After fixing, verify the original failure no longer occurs.

## Completion

Report:
- what changed
- what was validated
- any remaining uncertainty or limitations

Do not claim that something works unless it was validated or the limitation is explicitly stated.
