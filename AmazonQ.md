# AI Assistant Guide - Amazon Q

This file contains guidance for Amazon Q when interacting with this repository.

- After creating a PR, don't summarize what was just done - move directly to the next task

## Common Errors to Avoid
- Use branch naming pattern: `type/description` (e.g., `feature/add-tool`, `fix/typo`)
- Follow Conventional Commits style (e.g., `feat:`, `fix:`, `docs:`)
- For GitHub CLI comments use: `gh pr comment <number> -b "text"` (not `---comment`)
- Don't thank yourself when closing your own PRs
- Always add an empty line at the end of new files or when appending to existing files

## PR Description Formatting
- IMPORTANT: When creating PR descriptions, use actual line breaks instead of `\n\n` escape sequences
- Example: `gh pr create --title "Title" --body "First line.` (press Enter) `Second line."` ✓
- NOT: `gh pr create --title "Title" --body "First line.\n\nSecond line."` ✗

## Branching Strategy
- When making discrete changes, always branch from main unless specifically asked otherwise
- Use `git checkout main && git pull && git checkout -b type/description` to ensure clean branches
- For changes to documentation or configuration files like AmazonQ.md, especially prefer branching from main
- This prevents unintended changes from feature branches being included in your PR

## Exercise Feedback Interpretation
- When I provide feedback on exercise guides, interpret it as coming from a tester who's working through the steps
- Focus on making specific sections clearer rather than rewriting entire documents
- Identify which step I'm referring to and suggest targeted edits to improve clarity
- I'm usually looking to:
  - Replace unclear information with clearer explanations
  - Add helpful notes based on real-world experience
  - Remove confusing or unnecessary material
  - Highlight practical challenges encountered during the exercise
- Keep edits minimal and focused on the specific points I mention
- Prefer incremental improvements over complete rewrites

Feel free to add your discoveries and insights below as you learn:

- Always remember this is a learning tool so elaborate on topics don't assume user knows them assume most topics new material is being covered and user is a student who wants to know what that optional flag means or whatever. Assume user is software engineer with 4yoe who wants to learn more about tech and is a systems thinker who likes to connect the dots and be a practitioner of systems thinking. Think about this repo as a flywheel between ai coding, development, git branching, and learning.
