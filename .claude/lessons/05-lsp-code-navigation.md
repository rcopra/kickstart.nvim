# LSP Code Navigation

Use Language Server Protocol for intelligent code navigation and refactoring.

---

## What LSP Provides

When you open a Ruby file, `ruby_lsp` starts. For Lua files, `lua_ls`. These servers understand your code semantically — not just text matching.

## Navigation Keybinds

Your config sets these up:

| Keys | Purpose |
|------|---------|
| `grd` | Go to definition |
| `grr` | Find all references |
| `gri` | Go to implementation |
| `grt` | Go to type definition |
| `grD` | Go to declaration |
| `gO` | Document symbols (outline of current file) |
| `gW` | Workspace symbols (search across project) |

## Using These in Practice

**Understanding a function:**
Cursor on a function call → `grd` → you're at the definition.
`Ctrl-o` to jump back. (Jump list navigation)

**Finding all usages:**
Cursor on a function/variable → `grr` → Telescope shows all references.
Navigate the list, `<Enter>` to jump.

**Exploring a file's structure:**
`gO` → see all functions/classes/methods in this file → jump to any.

**Finding a class across the project:**
`gW` → type the class name → jump to it.

## Code Actions and Refactoring

| Keys | Purpose |
|------|---------|
| `grn` | Rename symbol (across all files) |
| `gra` | Code action (context-dependent fixes) |

**Renaming:**
Cursor on a variable → `grn` → type new name → `<Enter>`.
All references update across the project.

**Code actions:**
When you see a diagnostic (error/warning), `gra` might offer fixes:
- Add missing import
- Extract variable
- Convert syntax

## Diagnostics

| Keys | Purpose |
|------|---------|
| `]d` / `[d` | Jump to next / previous diagnostic |
| `<Space>q` | Open diagnostic quickfix list |
| `K` | Hover documentation |

**Investigating an error:**
`]d` to jump to it → `K` to see full error message → `gra` to see if there's an auto-fix.

## Inlay Hints

Some LSPs provide inline type hints. Toggle them:

| Keys | Purpose |
|------|---------|
| `<Space>th` | Toggle inlay hints |

## Jump List Navigation

As you jump around with `grd`, `grr`, etc., Neovim tracks your positions:

| Keys | Purpose |
|------|---------|
| `Ctrl-o` | Jump back |
| `Ctrl-i` | Jump forward |
| `:jumps` | See full jump list |

This is how you "go to definition" and then return to where you were.

## LSP vs Text Search

| Task | Use LSP | Use Grep |
|------|---------|----------|
| Find where a function is defined | `grd` | — |
| Find all usages of a symbol | `grr` | — |
| Find a string literal | — | `<Space>sg` |
| Find a pattern/regex | — | `<Space>sg` |
| Rename across project | `grn` | — |
| Search when LSP isn't attached | — | `<Space>sg` |

LSP understands scope. `grr` on a local variable finds only references to that variable, not other variables with the same name.

## Checking LSP Status

| Command | Purpose |
|---------|---------|
| `:LspInfo` | See which servers are attached |
| `:Mason` | Manage installed LSP servers |
| `:LspRestart` | Restart LSP if it's misbehaving |

## Hover Documentation

`K` over any symbol shows its documentation, type signature, or source. Press `K` again to enter the hover window and scroll.
