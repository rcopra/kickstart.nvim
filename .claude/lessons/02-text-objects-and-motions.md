# Text Objects and Motions

The core of efficient Vim editing. Learn to think in terms of **verbs** and **nouns**.

---

## The Grammar

Vim commands follow a pattern: `verb + modifier + noun`

- **Verbs**: `d` (delete), `c` (change), `y` (yank/copy), `v` (visual select)
- **Modifiers**: `i` (inner), `a` (around)
- **Nouns**: `w` (word), `p` (paragraph), `"` (quotes), `{` (braces), etc.

## Common Combinations

| Command | Meaning |
|---------|---------|
| `dw` | Delete word (from cursor) |
| `diw` | Delete inner word (whole word) |
| `daw` | Delete around word (word + surrounding space) |
| `ci"` | Change inner quotes (delete contents, enter insert mode) |
| `ca"` | Change around quotes (delete quotes too) |
| `dip` | Delete inner paragraph |
| `yap` | Yank around paragraph |
| `di{` | Delete inside braces |
| `da[` | Delete around brackets (including brackets) |
| `cit` | Change inner tag (HTML/XML) |

## Motions for Navigation

| Motion | Movement |
|--------|----------|
| `w` / `b` | Forward / back by word |
| `e` | End of word |
| `0` / `$` | Start / end of line |
| `^` | First non-whitespace character |
| `gg` / `G` | Top / bottom of file |
| `{` / `}` | Previous / next paragraph |
| `%` | Matching bracket |
| `f{char}` | Find character on current line |
| `t{char}` | To character (one before) |
| `;` / `,` | Repeat f/t forward / backward |

## Combining with Counts

Add a number to repeat:

| Command | Meaning |
|---------|---------|
| `3w` | Move forward 3 words |
| `d2w` | Delete 2 words |
| `5j` | Move down 5 lines |
| `2dd` | Delete 2 lines |

## Visual Mode Refinement

Sometimes it's easier to select first, then act:

1. `v` to enter visual mode
2. Expand selection with motions (`w`, `}`, etc.)
3. Apply verb (`d`, `y`, `c`)

Or use visual line mode with `V` to select whole lines.

## Practical Examples

**Delete a function parameter:**
Cursor on parameter → `daw` (delete around word, gets the comma too if configured with mini.ai)

**Change a string:**
Cursor inside `"hello"` → `ci"` → type new string → `<Esc>`

**Copy a whole function:**
Cursor inside function → `vip` → `y` (or just `yip`)

**Delete everything inside parentheses:**
Cursor inside `(foo, bar, baz)` → `di(`

**Swap to different quotes:**
`ci"` deletes contents, then `<Esc>`, then `cs"'` with vim-surround (if installed) — or just retype.

## The Dot Command

`.` repeats the last change.

1. `ciw` to change a word → type replacement → `<Esc>`
2. Move to next occurrence (`n` if you searched)
3. `.` to repeat the change

This is why atomic, repeatable commands matter.

## Building Muscle Memory

Start with these three patterns:
1. `ciw` — change word under cursor
2. `dip` — delete paragraph
3. `yi{` — yank inside braces

Use them until they're automatic, then add more.
