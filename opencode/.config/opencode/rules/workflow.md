# Workflow

## Before Changes

1. Understand the user's requested outcome.
2. Inspect the relevant files and existing implementation.
3. Identify existing abstractions, patterns, and dependencies that should be reused.
4. For non-trivial changes, outline the approach before editing.
5. Do not edit unrelated files.

## During Changes

- Prefer small, incremental changes.
- Preserve existing behavior unless the task requires changing it.
- Reuse existing code and project conventions.
- Do not introduce dependencies unless necessary.
- Do not make speculative changes.
- If the task is ambiguous, inspect the code first; ask only when the ambiguity cannot be resolved from the repository or documentation.

## After Changes

1. Review the diff.
2. Check for unintended changes.
3. Run the most relevant validation available.
4. Fix validation failures caused by the changes.
5. Report:
   - what changed
   - what was validated
   - any remaining limitations

## Debugging

- Reproduce the problem before changing code when practical.
- Identify the root cause rather than masking the symptom.
- Make the smallest fix that addresses the root cause.
- Re-run the reproducing case after the fix.
