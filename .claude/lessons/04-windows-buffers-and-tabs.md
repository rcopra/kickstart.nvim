# Windows, Buffers, and Tabs

Understand how Neovim organizes open files and views.

---

## The Mental Model

- **Buffer**: A file loaded into memory. It exists even when not visible.
- **Window**: A viewport showing a buffer. You can have multiple windows showing the same buffer.
- **Tab**: A collection of windows. Like a workspace layout.

Most workflows use buffers and windows. Tabs are optional.

## Buffer Commands

| Command | Purpose |
|---------|---------|
| `:e filename` | Edit/open a file |
| `:w` | Save current buffer |
| `:wa` | Save all buffers |
| `:bd` | Close buffer (buffer delete) |
| `:bn` / `:bp` | Next / previous buffer |
| `<Space><Space>` | Telescope buffer picker (your config) |

Buffers stay open in the background. Use `<Space><Space>` to switch between them.

## Window Commands

Your config maps `Ctrl-h/j/k/l` for window navigation:

| Keys | Purpose |
|------|---------|
| `Ctrl-h` | Move to left window |
| `Ctrl-j` | Move to window below |
| `Ctrl-k` | Move to window above |
| `Ctrl-l` | Move to right window |

Creating and closing windows:

| Command | Purpose |
|---------|---------|
| `:vsplit` or `Ctrl-w v` | Vertical split |
| `:split` or `Ctrl-w s` | Horizontal split |
| `:q` | Close current window |
| `:only` or `Ctrl-w o` | Close all other windows |
| `Ctrl-w =` | Make all windows equal size |
| `Ctrl-w _` | Maximize current window height |
| `Ctrl-w \|` | Maximize current window width |

## Resizing Windows

| Keys | Purpose |
|------|---------|
| `Ctrl-w >` | Increase width |
| `Ctrl-w <` | Decrease width |
| `Ctrl-w +` | Increase height |
| `Ctrl-w -` | Decrease height |
| `5 Ctrl-w >` | Increase width by 5 |

Or use the mouse — it's enabled in your config.

## Window Arrangements

| Command | Purpose |
|---------|---------|
| `Ctrl-w H` | Move window to far left |
| `Ctrl-w J` | Move window to bottom |
| `Ctrl-w K` | Move window to top |
| `Ctrl-w L` | Move window to far right |
| `Ctrl-w r` | Rotate windows |

## Common Layouts

**Code + Terminal (vertical):**
```vim
:vsplit | terminal irb
```

**Code + Test file (horizontal):**
```vim
:split spec/my_spec.rb
```

**Three-way diff/comparison:**
```vim
:vsplit file2.rb
:vsplit file3.rb
Ctrl-w =
```

## Working with Neo-tree

Your config has Neo-tree for file browsing:

| Command | Purpose |
|---------|---------|
| `:Neotree` | Open file tree |
| `:Neotree toggle` | Toggle file tree |
| `:Neotree reveal` | Open tree and highlight current file |

Inside Neo-tree, press `?` for help.

## Tabs (When Needed)

Tabs are useful when you want completely separate workspace layouts — e.g., one tab for frontend code, another for backend.

| Command | Purpose |
|---------|---------|
| `:tabnew` | Create new tab |
| `:tabnext` / `gt` | Next tab |
| `:tabprev` / `gT` | Previous tab |
| `:tabclose` | Close tab |

Most of the time, buffers + windows are enough.

## Terminal Windows

| Command | Purpose |
|---------|---------|
| `:terminal` | Open terminal in current window |
| `:vsplit \| terminal` | Terminal in vertical split |
| `<Esc><Esc>` | Exit terminal mode (your config) |
| `i` or `a` | Re-enter terminal mode |

The terminal is just another buffer. Navigate to it with normal window commands.
