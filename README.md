# Tech Skills Gym

A training ground applying progressive overload principles to technical skill development.

## How to Use

### For ChatGPT:

#### Option 1: Terminal-Based Training (Default)
1. Create a dedicated project:
   - Click on "Projects" in the left sidebar
   - Click "+ New project"
   - Enter name "tech-skills-gym" (or your preferred name)
   - Click "Create project"

2. Add custom instructions to your project:
   - Under your new project, click "Add instructions"
   - Visit: https://raw.githubusercontent.com/atxtechbro/tech-skills-gym/refs/heads/main/INSTRUCTIONS.json
   - Press Ctrl+A to select all content
   - Copy the entire content (Ctrl+C)
   - Paste it into the project instructions field (Ctrl+V)
   - Save the instructions

3. Begin your training session with: "spot me bro [focus area]"

4. You can create multiple sessions within this project for different focus areas:
   - "spot me bro kubernetes"
   - "spot me bro golang"
   - etc.

#### Option 2: Park Walk Version (Voice-Optimized)
1. Create a dedicated project for your walking sessions:
   - Click on "Projects" in the left sidebar
   - Click "+ New project"
   - Enter name "tech-skills-walk" (or your preferred name)
   - Click "Create project"

2. Add the park walk instructions to your project:
   - Under your new project, click "Add instructions"
   - Visit: https://raw.githubusercontent.com/atxtechbro/tech-skills-gym/feature/park-walk-instructions/INSTRUCTIONS.json
   - Press Ctrl+A to select all content
   - Copy the entire content (Ctrl+C)
   - Paste it into the project instructions field (Ctrl+V)
   - Save the instructions

3. Begin your walking session with: "walk with me through [topic]"

4. This version is optimized for:
   - Voice input/output during walks
   - Longer, narrative-rich responses
   - Audio-friendly learning without visual references
   - Natural conversation flow that matches walking rhythm

#### Option 3: Using Custom Instructions
1. Start a new ChatGPT conversation
2. Click on "Custom instructions" in the settings
3. In the "How would you like ChatGPT to respond?" section:
   - For terminal-based training: https://raw.githubusercontent.com/atxtechbro/tech-skills-gym/refs/heads/main/INSTRUCTIONS.json
   - For park walk version: https://raw.githubusercontent.com/atxtechbro/tech-skills-gym/feature/park-walk-instructions/INSTRUCTIONS.json
   - Press Ctrl+A to select all content
   - Copy the entire content (Ctrl+C)
   - Paste it into the custom instructions field (Ctrl+V)
4. Begin your session with the appropriate prompt:
   - Terminal version: "spot me bro [focus area]"
   - Park walk version: "walk with me through [topic]"

> **Note:** We're looking for contributions to improve Claude instructions. If you're a Claude Pro user, please check [Issue #30](https://github.com/atxtechbro/tech-skills-gym/issues/30).

That's it! The AI will guide you through progressive technical exercises following the training framework.

## Example Initial User Inputs

- `spot me bro kubernetes - i'm trying to learn about service meshes`
- `hey spot me bro with some golang, i've been coding for about 2 years`
- `SPOT ME BRO! need to get better at system design interviews ASAP!!`
- `spot me bro bash scripting please. i'm a complete beginner.`
- `can you spot me on react hooks? i understand components but hooks confuse me`

## What's in INSTRUCTIONS.json

The framework is organized into several key sections:

### Always Start With
- SwoleCoder nickname for your AI trainer
- Energetic greeting to kick off your session

### Meta
- Description of the technical skills gym concept

### Goals
- Primary objective
- Philosophy
- Approach to skill development

### Training Framework
- Principles for effective skill building
- Progression model
  - Difficulty calibration (5% rule)
  - Feedback loop
  - Tracking progress

### Session Structure
- Format for interactive learning
- Flow
  - Warm-up phase
  - Main sets phase
  - Cool-down phase
- Progression approach

### Interaction Protocol
- Initiation process
- Delivery style
- Feedback mechanism
- Adaptation based on performance
- Continuation options

### Agent Responsibilities
- What the AI should provide
- What the AI should avoid
- Critical guidelines

### User Responsibilities
- Expected user contributions
- Commitment to the process

### Technical Focus Areas
- Primary skill domains
- Development approach

### Ethos
- Mindset for effective learning
- Identity as a learner
- Commitment to mastery

## Sandbox Environment

For safe experimentation:
- Run `./setup-sandbox.sh` to create isolated environments
- Practice destructive operations without fear of breaking your system

## Philosophy

This gym applies bodybuilding principles to technical skills:
- Progressive overload (gradually increasing difficulty)
- Consistent practice with feedback loops
- Targeted exercises for specific skill development
- One exercise at a time - mastery through focus
