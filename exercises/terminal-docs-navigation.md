# Terminal Documentation Navigation

This exercise focuses on building self-sufficiency with navigating documentation in text-only terminal environments. Being able to quickly find and understand documentation without relying on web browsers is a valuable skill for system administrators and developers working in terminal-only environments.

## Exercise 1: Man Page Mastery

### Objective
Learn to efficiently navigate and extract information from man pages in a terminal environment.

### Prerequisites
- Access to a Linux/Unix terminal
- Basic familiarity with command line navigation

### Steps

1. **Understanding man page sections**:
   ```bash
   # View the manual for the man command itself
   man man
   ```
   
   Take note of the different manual sections (1-9) and what each contains.

2. **Basic navigation commands**:
   - Press `Space` or `Page Down` to move forward one page
   - Press `b` or `Page Up` to move backward one page
   - Press `/` followed by a search term to search forward
   - Press `n` to find the next occurrence of your search term
   - Press `N` to find the previous occurrence
   - Press `q` to quit

3. **Finding specific commands**:
   ```bash
   # Search for a command when you're not sure of the exact name
   apropos "search term"
   
   # Alternative using man
   man -k "search term"
   ```

4. **Practice exercise**: Find all information about the `find` command:
   ```bash
   # View the main man page for find
   man find
   
   # Search within the page for specific options
   # (Type /recursive and press Enter while in the man page)
   ```
   
   Try to locate information about:
   - How to find files by modification time
   - How to find files by permissions
   - How to execute commands on found files

5. **Exploring different sections**: Some commands have documentation in multiple sections:
   ```bash
   # View specific section of a man page
   man 1 printf   # User command
   man 3 printf   # Programming function
   ```
   
   Notice the differences between the command and the C library function.

### Reflection Questions

1. What navigation commands did you find most useful when reading man pages?
2. How does the organization of man pages help or hinder finding specific information?
3. What strategies might you develop for quickly locating information in lengthy documentation?

## Next Exercises

Future exercises in this series will cover:

1. **Info Pages Navigation**: Using the GNU Info system for more structured documentation
2. **Built-in Help Systems**: Navigating help in tools like Vim, Tmux, and other TUI applications
3. **Documentation Extraction**: Using tools like `tldr` and creating your own cheat sheets
4. **Terminal-based Documentation Browsers**: Using tools like `w3m` and `lynx` for web documentation

---

*Note: This exercise is designed to build foundational skills for terminal-based documentation navigation. The focus is on developing self-sufficiency rather than memorizing specific commands.*
