---
description: Review the PR and update the title and description if needed.
agent: build
---

Review the PR with ID: $1.

Here is the current PR information:
!`gh pr view $1 --json title,body,files,commits,state,headRefName,baseRefName,url`

Here is the diff of the changes:
!`gh pr diff $1`

Update the title and description based on these changes. 
The review should be based strictly on the committed changes and project context. Do not include information from non-committed files.

**Requirements:**
1. The description must be Markdown formatted.
2. If the current title contains an 'AB#number' (e.g., AB#1234), you **must** preserve that exact string in the new title.
3. Use the `gh pr edit` command to apply the changes once you have formulated the update.
