-- Alt+arrow moves between nvim splits, then crosses into the adjacent
-- multiplexer pane at a split edge.
--
-- Inside Herdr, herdr-splits.nvim owns both halves of that handoff: the Herdr
-- keybinds forward Alt+arrow into this pane, the plugin moves the cursor, and
-- at an edge it hands focus back to Herdr. setup() generates the
-- herdr-splits.conf the Herdr-side scripts read, so nav_keys is what makes the
-- forwarded chord agree with the alt+arrow bindings in ~/.config/herdr/config.toml.
if vim.env.HERDR_ENV == '1' then
  vim.pack.add { 'https://github.com/lmilojevicc/herdr-splits.nvim' }

  local splits = require 'herdr-splits'
  splits.setup {
    nav_keys = { left = '<M-Left>', down = '<M-Down>', up = '<M-Up>', right = '<M-Right>' },
  }

  vim.keymap.set('n', '<M-Left>', splits.move_cursor_left, { desc = 'Move to left split/pane' })
  vim.keymap.set('n', '<M-Down>', splits.move_cursor_down, { desc = 'Move to lower split/pane' })
  vim.keymap.set('n', '<M-Up>', splits.move_cursor_up, { desc = 'Move to upper split/pane' })
  vim.keymap.set('n', '<M-Right>', splits.move_cursor_right, { desc = 'Move to right split/pane' })
else
  vim.pack.add { 'https://github.com/mrjones2014/smart-splits.nvim' }

  local splits = require 'smart-splits'
  splits.setup {}

  vim.keymap.set('n', '<M-Left>', splits.move_cursor_left, { desc = 'Move to left split' })
  vim.keymap.set('n', '<M-Down>', splits.move_cursor_down, { desc = 'Move to lower split' })
  vim.keymap.set('n', '<M-Up>', splits.move_cursor_up, { desc = 'Move to upper split' })
  vim.keymap.set('n', '<M-Right>', splits.move_cursor_right, { desc = 'Move to right split' })
end
