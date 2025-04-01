# Exploring Learning Experiences with Amazon Q

This document captures my ongoing exploration of creating effective learning experiences with Amazon Q.

## The Core Prompt Pattern

I'm developing a primary prompt pattern that can be adapted for learning any technical skill. The goal is to create a structured, interactive learning experience that feels like working with a patient, knowledgeable mentor.

```
I want to learn [technology/skill] from beginner to proficient level. Please create a series of progressive exercises that will:

1. Start with fundamentals and build to advanced concepts
2. Present one exercise at a time
3. Wait for my completion before moving to the next exercise
4. Track my progress (e.g., "Exercise 7/14")
5. Allow me to ask follow-up questions without losing context

For each exercise:
- Provide clear instructions
- Explain why this skill is useful
- Show examples of expected output or behavior
- Offer hints if I get stuck

Press Y when you're ready to move to the next exercise.
```

## First Success: Tmux Learning Path

Last night I had my first breakthrough with creating a structured learning experience using Amazon Q. I asked for a series of exercises to learn tmux, and the experience was surprisingly effective.

What worked well:
- The exercises progressed naturally from basic to advanced concepts
- Being presented with one challenge at a time kept me focused
- The progress tracking (e.g., "Exercise 7/14") was motivating
- I could ask follow-up questions without disrupting the flow
- The simple "press Y to continue" mechanism gave me control over pacing

## Questions I'm Exploring

- What prompt structures create the most effective learning paths?
- How specific should the learning goals be?
- What's the ideal number of exercises for a learning path?
- How can prompts encourage exploration while maintaining structure?
- What elements make the learning experience feel most natural?

## Next Steps

I plan to experiment with this prompt pattern for various technical skills and document what works best. My goal is to refine a template that consistently creates engaging, effective learning experiences.
