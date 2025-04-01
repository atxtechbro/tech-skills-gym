# Typing Skills Development Tracker

This directory contains personalized typing progress reports and feedback from your Amazon Q typing skills development sessions. These files are .gitignored to keep your personal progress private while allowing the system to reference your history for personalized coaching.

## How This Works

1. **Session Reports**: After each typing practice session, Amazon Q generates a detailed report card saved as `typing-report-YYYY-MM-DD.md`

2. **Progress Tracking**: These reports track your improvement over time, identifying persistent challenges and areas of growth

3. **Personalized Coaching**: In future sessions, Amazon Q will reference these reports to provide continuity in your learning journey

4. **Adaptive Exercises**: As patterns emerge in your typing, exercises will be customized to address your specific needs

## Using This System

When starting a new typing practice session with Amazon Q, use the following prompt:

```
I want to continue my split keyboard typing practice. Please review my previous session reports in the progress-data folder to understand my progress and challenges, then create appropriate exercises for today's session that build on my previous work.
```

This prompt instructs Amazon Q to:
1. Check your previous reports
2. Understand your specific challenges (like g/h boundary issues)
3. Design exercises that target your needs
4. Continue building on your progress

## Privacy Note

This folder is excluded from git tracking via .gitignore. Your typing progress reports remain on your local system and are not pushed to any remote repository.
