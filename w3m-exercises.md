# W3M Browser Exercises

A progressive series of exercises for learning the w3m text-based browser, following a Fibonacci sequence of complexity.

## How to Use This Guide

1. Install w3m if not already installed: `sudo apt-get install w3m`
2. Work through exercises in order
3. Use `q chat` in your terminal for follow-up questions about any exercise
4. Track your progress in a personal notes file

## Exercise 1: Basic Navigation (Fibonacci Level 1)

**Goal**: Launch w3m and navigate a simple webpage

**Instructions**:
1. Open a terminal
2. Launch w3m with: `w3m https://lite.duckduckgo.com`
3. Use arrow keys to navigate the page
4. Press `q` to quit, then `y` to confirm

**Why This Matters**: Basic navigation is the foundation of using any text-based browser

**Key Commands**:
- Arrow keys: Move cursor
- Space/Page Down: Next page
- b/Page Up: Previous page
- q: Quit
- y/n: Confirm/cancel

## Exercise 2: Link Navigation (Fibonacci Level 1)

**Goal**: Navigate between links and open them

**Instructions**:
1. Launch w3m with: `w3m https://lite.duckduckgo.com`
2. Use Tab key to jump between links
3. Press Enter to follow a link
4. Use Backspace to go back to the previous page
5. Try searching for "w3m browser tutorial" and following a result

**Why This Matters**: Efficient link navigation is essential for browsing the web in a text interface

**Key Commands**:
- Tab: Move to next link
- Shift+Tab: Move to previous link
- Enter: Follow link
- Backspace: Go back to previous page

## Exercise 3: Text Search (Fibonacci Level 2)

**Goal**: Search for text within pages

**Instructions**:
1. Open a content-rich page: `w3m https://en.wikipedia.org/wiki/Text-based_web_browser`
2. Press `/` to initiate search
3. Type a search term (e.g., "history")
4. Press Enter to search
5. Use `n` to find the next occurrence
6. Use `N` to find the previous occurrence

**Why This Matters**: Finding specific information quickly is crucial for efficient browsing

**Key Commands**:
- /: Start search
- n: Next match
- N: Previous match

## Exercise 5: Bookmarks (Fibonacci Level 3)

**Goal**: Create and manage bookmarks

**Instructions**:
1. Navigate to a page you want to bookmark
2. Press `a` to add current page to bookmarks
3. Enter a bookmark name when prompted
4. Press `v` to view your bookmarks
5. Navigate to a bookmark and press Enter to visit it
6. In bookmark list, press `a` to add a new bookmark URL
7. In bookmark list, press `d` to delete a bookmark

**Why This Matters**: Bookmarks allow quick access to frequently visited pages

**Key Commands**:
- a: Add bookmark (when viewing a page)
- v: View bookmarks
- a: Add URL (when in bookmark list)
- d: Delete bookmark (when in bookmark list)

## Exercise 8: File Operations (Fibonacci Level 5)

**Goal**: Download and view files

**Instructions**:
1. Navigate to a page with downloadable content
2. Move cursor to the download link
3. Press Enter to follow the link
4. If prompted to download, press `D`
5. Specify the download location
6. To view local HTML files: `w3m /path/to/file.html`
7. To view local text files: `w3m /path/to/file.txt`

**Why This Matters**: Managing files is essential for saving and accessing content offline

**Key Commands**:
- D: Download link target
- o: Open local file

## Exercise 13: Configuration (Fibonacci Level 8)

**Goal**: Customize w3m settings

**Instructions**:
1. Press `o` to open options menu
2. Navigate through different setting categories
3. Toggle options with Space
4. Change values by typing new ones
5. Save settings with `[OK]` button
6. Create/edit ~/.w3m/config file for permanent changes
7. Try changing display settings like color, default charset, etc.

**Why This Matters**: Customization improves usability and adapts the browser to your needs

**Key Commands**:
- o: Options menu
- Space: Toggle options
- Arrow keys: Navigate options

## Exercise 21: Advanced Integration (Fibonacci Level 13)

**Goal**: Integrate w3m with other command-line tools

**Instructions**:
1. Pipe content to w3m: `echo "<html><body><h1>Hello</h1></body></html>" | w3m -T text/html`
2. Use w3m for HTML email viewing in mutt/neomutt
3. Set up w3m as the MIME handler for HTML in terminal email clients
4. Configure w3m as the default browser for terminal applications
5. Use w3m in scripts to extract web content: `w3m -dump https://example.com > content.txt`

**Why This Matters**: Integration with other tools creates a seamless terminal workflow

**Key Commands**:
- Various command-line options:
  - `-dump`: Output rendered page to stdout
  - `-T`: Specify content type
  - `-cookie`: Enable cookie processing
  - `-no-cookie`: Disable cookie processing

## Follow-Up Learning

For any exercise, use `q chat` in your terminal to ask follow-up questions like:

- "Can you explain more about w3m bookmark management?"
- "What are some advanced keyboard shortcuts for w3m navigation?"
- "How can I configure w3m to display images in the terminal?"
- "What's the best way to handle forms in w3m?"

Track your progress by creating notes in the progress-data directory after completing each exercise.
