#!/bin/bash

# W3M Browser Learning Session Starter
# This script helps create a new w3m learning session with proper tracking

# Create directories if they don't exist
mkdir -p ~/amazon-q-learning-prompts/progress-data/w3m-sessions

# Get current date
CURRENT_DATE=$(date +"%Y-%m-%d")

# Find the latest session number
LATEST_SESSION=$(ls -1 ~/amazon-q-learning-prompts/progress-data/w3m-sessions/ 2>/dev/null | grep -o "session-[0-9]*" | sort -r | head -n 1 | grep -o "[0-9]*")

# If no sessions exist, start with 1
if [ -z "$LATEST_SESSION" ]; then
  NEW_SESSION=1
else
  NEW_SESSION=$((LATEST_SESSION + 1))
fi

# Create new session file
SESSION_FILE=~/amazon-q-learning-prompts/progress-data/w3m-sessions/w3m-session-${NEW_SESSION}-${CURRENT_DATE}.md

# Copy template
cp ~/amazon-q-learning-prompts/progress-data/w3m-session-template.md "$SESSION_FILE"

# Update session information
sed -i "s/- \*\*Date\*\*: YYYY-MM-DD/- \*\*Date\*\*: ${CURRENT_DATE}/" "$SESSION_FILE"
sed -i "s/- \*\*Session Number\*\*: #/- \*\*Session Number\*\*: ${NEW_SESSION}/" "$SESSION_FILE"

# Determine Fibonacci level based on previous sessions
# This is a simplified approach - in a real implementation, you might want to track
# actual progress through exercises rather than just session count
if [ $NEW_SESSION -le 2 ]; then
  FIBO_LEVEL=1
elif [ $NEW_SESSION -eq 3 ]; then
  FIBO_LEVEL=2
elif [ $NEW_SESSION -eq 4 ]; then
  FIBO_LEVEL=3
elif [ $NEW_SESSION -le 6 ]; then
  FIBO_LEVEL=5
elif [ $NEW_SESSION -le 8 ]; then
  FIBO_LEVEL=8
elif [ $NEW_SESSION -le 10 ]; then
  FIBO_LEVEL=13
else
  FIBO_LEVEL=21
fi

sed -i "s/- \*\*Fibonacci Level\*\*: #/- \*\*Fibonacci Level\*\*: ${FIBO_LEVEL}/" "$SESSION_FILE"

echo "Created new W3M learning session #${NEW_SESSION} at Fibonacci level ${FIBO_LEVEL}"
echo "Session file: ${SESSION_FILE}"
echo ""
echo "To start your session with Amazon Q, copy and paste the following prompt:"
echo "--------------------------------------------------------------------------------"
echo "I want to continue my w3m browser practice. I'm currently at Fibonacci level ${FIBO_LEVEL} (Session #${NEW_SESSION}). Please review the exercises for this level from the w3m-exercises.md file and guide me through the appropriate exercises for today's session."
echo "--------------------------------------------------------------------------------"

# Make the file executable
chmod +x "$SESSION_FILE"
