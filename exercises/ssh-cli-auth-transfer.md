# SSH Authentication URL Transfer Exercise

This exercise addresses a common real-world scenario: securely transferring a long authentication URL between machines when one has limited capabilities.

## Actual Use Case

You're working with a text-only Arch Linux installation on an older ThinkPad T400. You need to authenticate the Claude CLI (Anthropic's AI assistant), which requires accessing a long authentication URL. The text-based browsers available (w3m, lynx, etc.) are struggling with the modern authentication page, and manually typing the URL would be error-prone and tedious.

## Learning Objectives

- Set up SSH connections between computers with different capabilities
- Transfer authentication URLs or tokens securely
- Work around limitations of older hardware
- Implement practical solutions for CLI tool authentication
- Understand the challenges of text-only environments

## Prerequisites

- A text-only Linux machine (like a ThinkPad T400 with Arch Linux)
- A modern computer with graphical browser capabilities
- Network connectivity between machines
- Basic command line knowledge

## Exercise Steps

### Part 1: Prepare the Source Machine (ThinkPad T400)

1. **Install OpenSSH** if not already installed:
   ```bash
   sudo pacman -S openssh
   ```

2. **Start the SSH service**:
   ```bash
   sudo systemctl start sshd
   sudo systemctl status sshd  # Verify it's running
   ```

3. **Troubleshooting "Connection refused" errors**:
   ```bash
   # Edit SSH configuration
   sudo nano /etc/ssh/sshd_config
   
   # Look for these lines (they might be commented with # at the beginning):
   # ListenAddress 0.0.0.0
   # PasswordAuthentication yes
   # (Note: These lines might not be next to each other - use Ctrl+W to search)
   
   # Remove the # at the beginning of each line if present
   # When done, save with Ctrl+O, then Enter, and exit with Ctrl+X
   
   # Restart SSH after changes
   sudo systemctl restart sshd
   ```

4. **Test SSH locally**:
   ```bash
   ssh localhost
   ```
   
   You'll likely see this warning:
   ```
   The authenticity of host 'localhost (::1)' can't be established.
   ED25519 key fingerprint is SHA256:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.
   This key is not known by any other names.
   Are you sure you want to continue connecting (yes/no/[fingerprint])?
   ```
   
   This is normal and expected! Type `yes` and press Enter. This warning appears because this is your first SSH connection to this server, and SSH is protecting you from potential man-in-the-middle attacks. After connecting once, the key will be stored in your `~/.ssh/known_hosts` file and you won't see this warning again.

### Part 2: Initial Claude CLI Setup on ThinkPad

1. **Install Node.js and npm** (required for Claude CLI):
   ```bash
   sudo pacman -S nodejs npm
   ```

2. **Install Claude CLI**:
   ```bash
   npm install -g @anthropic-ai/claude-code
   ```

3. **Begin Claude authentication process**:
   ```bash
   claude
   ```
   This will prompt you with an authentication URL that you need to access.

4. **Find your ThinkPad's IP address** (needed for the next step):
   ```bash
   ip addr show | grep inet
   ```
   Note the IP address (usually starts with 192.168.x.x or 10.x.x.x)

5. **Save the authentication URL**:
   ```bash
   # When Claude outputs the auth URL, save it to a file
   echo "https://long-authentication-url.example.com/with/many/parameters?and=values" > ~/claude-auth-url.txt
   ```

### Part 3: Transfer and Use the URL on Visual Browser Machine

1. **Use SCP to securely copy the URL file**:
   ```bash
   # From visual browser machine
   scp <username>@<ip-address>:~/claude-auth-url.txt ./
   cat claude-auth-url.txt
   ```
   
   **Note:** Replace `<username>` with your ThinkPad username (run `whoami` on ThinkPad to check) and `<ip-address>` with the IP address from step 4.
   
   SCP (Secure Copy Protocol) is built on SSH and allows you to securely transfer files between computers. This approach is much more reliable than trying to copy text from an SSH terminal session, which often doesn't integrate well with the system clipboard.

2. **Open the URL in a graphical browser** on your modern machine, complete the authentication process.

3. **Copy the resulting authentication token** (if any) to transfer back to the ThinkPad.

### Part 4: Complete Authentication on ThinkPad

1. **If a token is provided after authentication**, transfer it back:
   ```bash
   # On visual browser machine, save the token
   echo "your-authentication-token" > claude-token.txt
   
   # Transfer to ThinkPad
   scp claude-token.txt <username>@<ip-address>:~/
   ```

2. **Resume Claude CLI setup** on the ThinkPad with the token (if required).
   
   **Note:** On the text-only ThinkPad, copying the token from the file to the prompt requires using nano's visual mode (unlike the graphical machine). This contrast in text handling between environments is an interesting challenge. Be aware that if the process takes too long (30+ minutes), you might encounter an "OAuth error: Invalid state parameter" and need to restart.
   
   **Learning curve:** While the first attempt might take 20-30 minutes, subsequent attempts can be completed in under a minute once you have the commands in your history and understand the workflow. However, OAuth errors may still occur due to security features like session expiration, token reuse prevention, or state parameter validation. Solving these authentication challenges is an exercise for later exploration.

## Alternative Approaches

1. **QR Code Method**:
   ```bash
   # On ThinkPad, install qrencode
   sudo pacman -S qrencode
   
   # Generate QR code from auth URL
   qrencode -t ANSIUTF8 -o - "$(cat ~/claude-auth-url.txt)"
   
   # Scan with smartphone and complete auth there
   ```
   
   **Note:** While scanning the QR code is convenient, you may end up with a verification code on your smartphone that still needs to be transferred back to the ThinkPad. This creates another transfer challenge and isn't a complete solution by itself.
   
   **Additional challenge:** When trying to manually type the verification code from smartphone back into the terminal, errors are common. Attempting this resulted in "OAuth error: Request failed with status code 400" - likely due to typos or character mismatches when manually entering the code.

2. **Using Magic Wormhole** for direct secure transfer:
   ```bash
   # On both machines, install magic-wormhole
   sudo pacman -S magic-wormhole
   
   # On ThinkPad
   wormhole send ~/claude-auth-url.txt
   
   # On visual browser machine
   wormhole receive <code-from-thinkpad>
   ```

3. **X11 Forwarding** to run a graphical browser through SSH:
   ```bash
   # From visual browser machine
   ssh -X <username>@<ip-address>
   
   # On ThinkPad through SSH with X forwarding
   firefox &  # If you have a graphical browser installed
   ```

## Reflection Questions

1. What are the security implications of transferring authentication URLs between machines?
2. How could this process be automated for regular use?
3. What are the limitations of text-based browsers for modern web authentication?
4. How might CLI tools better accommodate text-only environments?

## Bonus Challenge

Create a shell script that automates the process of extracting authentication URLs from CLI tools and generating QR codes for easy scanning with a smartphone.

---

*Note: This exercise was created based on a real-world challenge with authenticating CLI tools on text-only Linux systems. The approach can be applied to many modern CLI tools that require web authentication.*
