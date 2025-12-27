# Feature Branch Workflow

A complete workflow for creating a feature branch, writing code, testing, and committing.

---

## Creating the branch

`:terminal` opens a shell inside Neovim. Run `git checkout -b feature/hello-world`. Doing git operations inside Neovim avoids context-switching to another window. `<Esc><Esc>` exits terminal mode, `:q` closes it.

## Finding the right file

`<Space>sf` opens the file finder. Type part of the filename — the fuzzy matcher narrows it down. `<Enter>` opens the file.

If you don't know the filename, `<Space>sg` does a live grep across the codebase. Search for a function name or string you know exists nearby.

## Setting up a test environment

`:vsplit | terminal irb` opens IRB in a vertical split. Code on the left, REPL on the right. Two commands chained to avoid extra keystrokes.

`Ctrl-h` and `Ctrl-l` move between windows. These are mapped in the config to replace the longer `Ctrl-w h` sequence.

## Writing code

Navigate with motions:
- `}` jumps forward by paragraph
- `gg` / `G` jumps to top / bottom
- `/pattern` searches for text

`o` opens a new line below and enters insert mode. Write the code.

As new lines appear, `+` symbols show in the gutter — gitsigns tracking changes.

## Testing in the REPL

`Ctrl-l` to move to IRB. The system clipboard is synced, so:
1. `Ctrl-h` back to code
2. `vip` to visual-select the inner paragraph (the function)
3. `y` to yank
4. `Ctrl-l` to IRB
5. `i` to enter insert mode
6. `Cmd-v` to paste
7. Call the function to test

## Checking style with Rubocop

`Ctrl-h` back to the code.

| Command | Purpose |
|---------|---------|
| `:Lint` | Run Rubocop, show diagnostics |
| `]d` / `[d` | Jump between diagnostics |
| `<Space>f` | Auto-fix with Rubocop |
| `:LintClear` | Clear diagnostics |

## Reviewing changes

| Keys | Purpose |
|------|---------|
| `<Space>hd` | Diff against index |
| `]c` / `[c` | Jump between git hunks |
| `<Space>hp` | Preview current hunk |

## Staging selectively

| Keys | Purpose |
|------|---------|
| `<Space>hs` | Stage current hunk |
| `<Space>hr` | Reset current hunk (discard change) |
| `<Space>hS` | Stage entire buffer |

Build commits piece by piece rather than staging everything.

## Committing

`:terminal` for git operations:

```bash
git status
git commit -m "Add hello_world function"
git push -u origin feature/hello-world
```

`<Esc><Esc>` exits terminal mode. `:q` closes it.

## Verifying

`<Space>hb` shows git blame inline — author, commit hash, message.

`:wa` saves all buffers.
