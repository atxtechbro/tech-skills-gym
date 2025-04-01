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

This repository includes a progress tracking system that stores session reports in a `progress-data` folder (gitignored for privacy). This creates a self-reinforcing feedback loop where:

1. Amazon Q generates personalized exercises based on your needs
2. Your progress is tracked in detailed report cards
3. Future sessions reference these reports for continuity
4. Exercises adapt to your specific challenges over time

![Typing Skills Feedback Flywheel](https://mermaid.ink/img/pako:eNp1kk1PwzAMhv9KlBOIbdI-tK5FOyFx4MKBwyTEIZi4W6Q2VZJuIMR_x2m7wgYcIvt9_Np2jrBUBcIYC_XkjVN6Ib1Zy6VxVs-lrxfKlnCvVQXPYFRZwdxYWDtb-gAXUFm3hHtTrSBXBVRGO1AzuDFmDTfGPsGDqWDhVAXWlGBnYGwJtbJQmgKMW0GmHHjnwdkKZtIvYWFsBcYFOIc_Tn_gKfzZOLiSvgRry_DvHLzRJZhwYwZzZ9wKjPQBrHNVOPkfuJC-BGtWIXgGM-lWYJ0Pr2cwl34BtbJh4Azmxq3BuTqAM5hJt4HaVME5g7mxa3DWBzCDmfQbqI3dQGlcHc4ZzKV_htqtobJ1gDOYS_8CtfEvUBkXwBnMpX-F2r1CZeoAZzCX_g1q9waVrQM4g4X071C7d6hcHeAM5tLXULsaKlsHOIOF9B9Qu4_wDsLnBGO8tVbWxRfGu6TrRnHcT9I4jdOkl_STXjpIh2nXHSS9tJf2O0nUTYfpIEuSKMu6nf9RdJwkadxJu1GWZv1OJ-5m6TDrJVmaxXHU_QYSw9Wd?type=png)

#### How the Feedback Flywheel Works

Unlike traditional learning with predetermined paths, this system creates a self-healing feedback loop:

1. **Input**: Your typing practice generates raw data about your specific challenges
2. **Analysis**: Amazon Q identifies patterns in your errors (not just random mistakes)
3. **Documentation**: These patterns are recorded in structured report cards
4. **Storage**: Reports are preserved in the progress-data folder (private, gitignored)
5. **Reference**: Future sessions begin by analyzing your historical patterns
6. **Adaptation**: New exercises are generated specifically for your needs
7. **Targeted Practice**: You work on your specific challenges
8. **Improvement**: Your skills develop in the areas you need most
9. **Repeat**: The cycle continues, constantly refining its focus

#### Example: The G/H Boundary Challenge

**Initial Session:**
- You type: "The huge gray dog" as "The guhr htau fog"
- Amazon Q identifies: G/H boundary confusion on split keyboard
- Report documents: "★★☆☆☆ G/H Differentiation - Significant challenge"
- Recommendation: "Focus on g=left index, h=right index finger positioning"

**Follow-up Session:**
- Amazon Q reads: Previous report showing G/H boundary issues
- Creates: Targeted G/H differentiation exercises
- Starts with: Basic "g h g h" pattern drills
- Progresses to: Simple words with g/h combinations
- Adapts based on: Your performance during the session

See `progress-data/feedback-loop-system.md` for more details on how this emergent learning system works.

To use this system for typing practice:
```
I want to continue my split keyboard typing practice. Please review my previous session reports in the progress-data folder to understand my progress and challenges, then create appropriate exercises for today's session that build on my previous work.
```
