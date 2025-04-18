# Dotfiles Learning Integration

This system creates a flywheel between your dotfiles repository and structured learning, following Unix philosophy principles.

## How It Works

1. When you make changes to your dotfiles repository via PRs, this system:
   - Monitors your dotfiles repository for PR activity
   - Creates detailed GitHub issues in this repo with all PR data
   - Includes a learning module template in each issue

2. The workflow is flexible:
   - Can trigger on PR creation, updates, or merges (configurable)
   - Updates existing issues when PRs are updated
   - Includes all context: diff, comments, commit messages, timestamps

3. The issue contains:
   - Complete PR metadata
   - File changes with status and change counts
   - Full commit history
   - PR comments
   - Raw file contents
   - Complete diff
   - A collapsible learning module template

## Why This Approach

This design follows Unix philosophy principles:
- **Do one thing well**: Each component has a single responsibility
- **Write programs to work together**: The issue output can be piped to other tools
- **Store data in flat text files**: All PR data is preserved in markdown format
- **Use software leverage**: Reuses GitHub's existing issue system

## Usage

### Manual Trigger

You can manually trigger the workflow for any PR:

1. Go to Actions → Dotfiles PR Issue Generator → Run workflow
2. Enter:
   - PR number from your dotfiles repo
   - Trigger type (created, updated, or merged)

### Automatic Monitoring

The system automatically checks for newly merged PRs every hour and creates issues for them.

### Creating Learning Modules

Each issue contains a learning module template at the bottom that you can use to:
1. Extract the template
2. Fill in the sections based on the PR data
3. Create a proper learning module document

## Configuration

To modify when issues are created:

1. Edit `.github/workflows/dotfiles-pr-monitor.yml` to change:
   - Monitoring frequency (currently hourly)
   - Trigger conditions (currently on merge)

2. Edit `.github/workflows/dotfiles-issue-generator.yml` to change:
   - What data is collected
   - How issues are formatted
   - The learning module template
