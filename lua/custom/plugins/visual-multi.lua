-- Multi-cursor support
-- Remap to avoid conflict with tmux navigation (must be set before the plugin loads)
vim.g.VM_maps = {
  ['Add Cursor Down'] = '<C-S-Down>',
  ['Add Cursor Up'] = '<C-S-Up>',
}

vim.pack.add { 'https://github.com/mg979/vim-visual-multi' }
