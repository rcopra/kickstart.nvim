# Finding Things Fast

Use Telescope and native search to navigate codebases of any size.

---

## Telescope Keybinds

These are configured in your setup:

| Keys | Purpose |
|------|---------|
| `<Space>sf` | Search files by name |
| `<Space><Space>` | Search open buffers |
| `<Space>sg` | Live grep (search file contents) |
| `<Space>sw` | Search current word under cursor |
| `<Space>sh` | Search help documentation |
| `<Space>sk` | Search keymaps |
| `<Space>sd` | Search diagnostics |
| `<Space>s.` | Search recent files |

## When to Use What

**You know the filename:**
`<Space>sf` → type part of the name → `<Enter>`

**You know the file is already open:**
`<Space><Space>` → select from buffer list

**You know a string or function name exists somewhere:**
`<Space>sg` → type the string → results update live → `<Enter>` to jump

**You want to find usages of the word under your cursor:**
`<Space>sw` — no typing needed

**You're not sure what keybind does something:**
`<Space>sk` → search "git" or "format" or whatever you're looking for

## Native Search

For searching within a file:

| Keys | Purpose |
|------|---------|
| `/pattern` | Search forward |
| `?pattern` | Search backward |
| `n` / `N` | Next / previous match |
| `*` | Search word under cursor (forward) |
| `#` | Search word under cursor (backward) |
| `<Esc>` | Clear search highlighting |

## Search and Replace

Within a file:

```vim
:%s/old/new/g      " Replace all occurrences
:%s/old/new/gc     " Replace with confirmation
:5,10s/old/new/g   " Replace in lines 5-10
```

The `%` means "whole file". You can also visual select lines first, then `:s/old/new/g`.

## Project-Wide Replace

1. `<Space>sg` to find all occurrences
2. `Ctrl-q` to send results to quickfix list
3. `:cdo s/old/new/g | update` to replace in all files

Or use `:grep` and quickfix directly:
```vim
:grep "pattern" **/*.rb
:copen                    " Open quickfix list
:cnext / :cprev           " Navigate results
```

## LSP-Powered Search

When LSP is attached, these are more accurate than text search:

| Keys | Purpose |
|------|---------|
| `grr` | Find references to symbol under cursor |
| `grd` | Go to definition |
| `gri` | Go to implementation |
| `gO` | Document symbols (functions, classes in this file) |
| `gW` | Workspace symbols (across project) |

## Quick File Switching

| Method | When to use |
|--------|-------------|
| `<Space><Space>` | Switch between recent buffers |
| `Ctrl-^` | Toggle between last two files |
| `<Space>s.` | Recent files (even from previous sessions) |

## Telescope Tips

Inside Telescope:
- `Ctrl-n` / `Ctrl-p` — navigate results
- `Ctrl-x` — open in horizontal split
- `Ctrl-v` — open in vertical split
- `<Esc>` — close Telescope
- Type multiple words separated by spaces for fuzzy AND matching
