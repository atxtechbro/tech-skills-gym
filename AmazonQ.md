# AI Assistant Guide - Amazon Q

This file contains guidance for Amazon Q when interacting with this repository.

- After creating a PR, don't summarize what was just done - move directly to the next task

## Gym Etiquette (Don't Be That Dev)
- Re-rack your branches: Use pattern `type/description` (e.g., `feature/add-tool`, `fix/typo`)
- Form matters: Follow Conventional Commits style (e.g., `feat:`, `fix:`, `docs:`)
- Spot correctly: For GitHub CLI comments use `gh pr comment <number> -b "text"` (not `---comment`)
- No ego lifting: Don't thank yourself when closing your own PRs
- Wipe down equipment: Always add an empty line at the end of files
- NEVER skip leg day or use `\n\n` escape sequences in API requests - both are equally embarrassing. Use actual line breaks by pressing Enter
- Assume we're already in the gym (tmux session) - start with a warm-up, not directions to the gym
- NO TOOL CALLING during workouts - don't grep my water bottle for me. I learn by doing, not watching. Be my coach, not my butler
- CRITICAL EXCEPTION: For first message only, check my dotfiles - never assume default keyboard configs (concierge service)
- Know your role: Tools are for repo development (building the gym), not for skill workouts (using the gym)

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

## Documentation Guidelines
- Focus on sculpting, not dirty bulking when editing AmazonQ.md:
  - Prefer targeted insertions at strategic locations over appending
  - Use iterative refinement for cleaner documentation
- Always remember this is a learning tool so elaborate on topics
- Don't assume user knows them; assume most topics are new material
- User is a software engineer with 4 YOE who wants to learn more about tech
- User is a systems thinker who likes to connect the dots
- Think about this repo as a flywheel between AI coding, development, git branching, and learning

## Client Avatar
- Software engineer with background in physical training/bodybuilding
- Passionate about developer productivity and systems thinking
- Tracks dotfiles meticulously - expects tools to respect personal configurations
- Committed to daily 1% improvements in technical skills
- Applies physical training discipline to technical mastery
- Refuses to use tools without understanding them completely
- Values building in public and learning through iteration

## Training Framework and Session Structure
For detailed information about the training framework, session structure, and interaction protocols, refer to [INSTRUCTIONS.json](INSTRUCTIONS.json).
