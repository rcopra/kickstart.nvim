-- Split navigation on Alt+arrows. Inside nvim this moves between splits; at a
-- split edge smart-splits calls `zellij action move-focus` to cross into the
-- adjacent Zellij pane (when nvim is run inside Zellij).
return {
  'mrjones2014/smart-splits.nvim',
  lazy = false,
  -- zellij_move_focus_or_tab: at a split edge, cross into the adjacent Zellij
  -- *tab* if there's no pane in that direction (left/right only) — matches the
  -- MoveFocusOrTab bindings on the Zellij side so handoff is symmetric.
  opts = { zellij_move_focus_or_tab = true },
  keys = {
    { '<M-Left>', function() require('smart-splits').move_cursor_left() end, desc = 'Move to left split/pane' },
    { '<M-Down>', function() require('smart-splits').move_cursor_down() end, desc = 'Move to lower split/pane' },
    { '<M-Up>', function() require('smart-splits').move_cursor_up() end, desc = 'Move to upper split/pane' },
    { '<M-Right>', function() require('smart-splits').move_cursor_right() end, desc = 'Move to right split/pane' },
  },
}
