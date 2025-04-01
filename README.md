# Amazon Q Learning Prompts

A repository documenting effective prompts for creating structured learning experiences with Amazon Q.

## What is this?

This repository explores how to transform conversations with Amazon Q into guided learning journeys. It documents my experiments with prompt patterns that create step-by-step learning experiences for technical skills.

The repository includes:
- A primary learning prompt for general technical skills
- Specialized prompts for specific skill areas (like typing)

## Why it matters

Traditional learning resources often lack interactivity or personalization. By developing effective prompts for AI assistants like Amazon Q, we can create:

- Progressive learning paths tailored to individual needs
- Interactive challenges with immediate feedback
- Adaptive pacing based on learner readiness
- Contextual follow-up discussions
- Hands-on skill development

## How to use this repository

The `AmazonQ.md` file contains the core prompt pattern I've found effective. Simply copy the prompt, replace `[technology/skill]` with what you want to learn, and paste it to Amazon Q. The AI will guide you through a series of exercises, like a gym workout for your technical skills.

For specialized skills:
- `typing-skills.md` - A prompt designed specifically for improving typing speed and accuracy, with special considerations for split keyboard users

### Progress Tracking System

This repository includes a progress tracking system that stores session reports in a `.typing` folder (gitignored for privacy). This creates a feedback loop where:

1. Amazon Q generates personalized exercises based on your needs
2. Your progress is tracked in detailed report cards
3. Future sessions reference these reports for continuity
4. Exercises adapt to your specific challenges over time

To use this system for typing practice:
```
I want to continue my split keyboard typing practice. Please review my previous session reports in the .typing folder to understand my progress and challenges, then create appropriate exercises for today's session that build on my previous work.
```
