#!/bin/bash
# Tech Skills Gym - Sandbox Setup
# Creates an isolated environment for skill practice

set -e

# Get sandbox name
SANDBOX_NAME=${1:-skill-sandbox}
SANDBOX_PATH="./sandboxes/$SANDBOX_NAME"

# Create structure
mkdir -p "$SANDBOX_PATH"/{scripts,data,notes}
cd "$SANDBOX_PATH" || exit 1

# Create README
cat > README.md << 'EOL'
# Tech Skills Gym - Sandbox

This is your personal training ground for skill development.

## Structure
- `scripts/` - Practice code
- `data/` - Exercise data files
- `notes/` - Learning insights

## Tips
1. Set specific session goals
2. Track progress in git
3. Push 5% beyond comfort zone
4. Document insights
5. Review and refactor

Remember: 1% daily improvements compound into expertise!
EOL

# Create starter script
cat > scripts/hello_sandbox.sh << 'EOL'
#!/bin/bash
echo "Welcome to your Tech Skills Gym sandbox!"
echo "Today's training begins now."
EOL
chmod +x scripts/hello_sandbox.sh

# Create session notes template
cat > notes/session_$(date +%Y%m%d).md << EOL
# Training Session - $(date +"%Y-%m-%d")

## Goals
- [ ] 

## Learnings
- 

## Next Steps
- 
EOL

echo "Sandbox '$SANDBOX_NAME' is ready!"
echo "cd $SANDBOX_PATH && ./scripts/hello_sandbox.sh"
