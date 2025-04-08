# GitHub PR Learning System

This system creates a flywheel between any GitHub repository and structured learning, following Unix philosophy principles.

## How It Works

1. When PRs are merged in a monitored GitHub repository, this system:
   - Extracts comprehensive PR data (diff, comments, commits, etc.)
   - Creates detailed GitHub issues in this repo with all PR data
   - Includes a learning module template in each issue

2. The workflow is flexible:
   - Can monitor any public GitHub repository
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

## Core Assumptions

This system makes the following assumptions about the repositories it monitors:

1. **GitHub Platform**: The repository is hosted on GitHub and uses GitHub's PR system
2. **PR Quality**: PRs contain meaningful descriptions that provide context for learning
3. **Public Access**: The repository is public or accessible with the provided token

## Usage

### Configuring Repositories to Monitor

Edit `.github/pr-monitor-config.txt` to specify which repositories to monitor:

```
# Default repository to monitor
owner/repo-name

# Additional repositories
another-owner/another-repo
```

### Manual Trigger

You can manually trigger the workflow for any PR:

1. Go to Actions → GitHub PR Issue Generator → Run workflow
2. Enter:
   - Repository name (format: owner/repo)
   - PR number to analyze
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

1. Edit `.github/workflows/github-pr-monitor.yml` to change:
   - Monitoring frequency (currently hourly)
   - Default repository to monitor

2. Edit `.github/workflows/github-pr-issue-generator.yml` to change:
   - What data is collected
   - How issues are formatted
   - The learning module template
