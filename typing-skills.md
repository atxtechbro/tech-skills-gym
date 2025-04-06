# Adaptive Typing Skills Development for Split Keyboards

This prompt transforms Amazon Q into an adaptive typing coach that focuses on improving accuracy through real-time feedback and personalized exercises, with special attention to split keyboard challenges.

## The Adaptive Typing Coach Prompt

```
I want to continue my split keyboard typing practice. Please review my previous session reports in the progress-data folder to understand my progress and challenges, then create appropriate exercises for today's session that build on my previous work.

For our session:
1. Start with a brief warm-up exercise targeting my specific challenge areas
2. Present exercises that progressively build on my current skill level
3. Track my progress (e.g., "Exercise 3/10")
4. After I report my results, analyze my specific error patterns
5. Generate the next exercise that specifically targets my weaknesses
6. At the end of the session, create a new report card in the progress-data folder

I'll report exactly what I typed, including errors, after each exercise. Use this data to create the next exercise that specifically targets my weaknesses.
Let's begin with a warm-up exercise based on my previous challenges.
```

## Alternative Quick-Start Prompt

```
I need your help improving my typing accuracy on a split keyboard. I'm practicing touch typing (without looking at the keyboard) and need a coach that can:
1. Observe my typing patterns through my self-reported errors
2. Identify specific problem areas in real-time
3. Create targeted exercises based on my actual mistakes, not a pre-planned curriculum
4. Focus primarily on accuracy, not speed
5. Adapt continuously as my skills develop

For our session:
- Start with a simple typing sample to establish a baseline
- After I report my results, analyze my specific error patterns
- Generate a custom exercise targeting my most common mistakes
- Continue this feedback loop, constantly refining exercises based on emerging patterns
- Help me identify keyboard regions or finger movements where I struggle most

I'll report exactly what I typed, including errors, after each exercise. Use this data to create the next exercise that specifically targets my weaknesses.
Let's begin with a simple baseline test.
```

## Feedback Loop Approach

The core of this approach is the continuous feedback loop:

1. **Review history**: Check previous reports in progress-data folder (for continuing sessions)
2. **Sample text/Warm-up**: Provide text for typing practice targeting known challenges
3. **User feedback**: User reports their typed result with errors preserved
4. **Pattern analysis**: Identify specific error patterns (not just general mistakes)
5. **Targeted exercise**: Create a new exercise specifically designed to address those patterns
6. **Session tracking**: Track progress through the session (e.g., "Exercise 3/10")
7. **Session report**: Generate a new report card at the end of the session
8. **Save progress**: Store the report in the progress-data folder for future reference

## Error Pattern Recognition

The AI should analyze errors for patterns such as:

- Consistent mistakes with specific keys or key combinations
- Finger positioning issues on particular keyboard regions
- Hand coordination problems on the split keyboard
- Recurring substitution patterns (e.g., consistently typing 'f' instead of 'g')
- Timing issues with certain sequences

## Split Keyboard Considerations

Special attention to split keyboard challenges:

- Hand independence and coordination
- Center-adjacent keys (t, y, g, h, b, n) that may cause confusion
- Thumb key accuracy
- Proper hand positioning without visual reference

## Adaptive Exercise Generation

Exercises should be generated based on:

- Historical performance from previous sessions
- Recently identified error patterns
- Progressive difficulty that responds to improvement
- Varied text that continues to test problem areas
- Repetition of challenging sequences until mastery is achieved

## Success Metrics

Focus on these accuracy metrics rather than speed:

- Error rate reduction over time
- Consistency in problem areas
- Improvement in specific keyboard regions
- Overall comfort with touch typing
- Gradual development of muscle memory

The key principle is that the learning path emerges organically from the user's actual typing patterns and challenges, with continuity between sessions provided by the stored reports.
