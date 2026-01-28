-- Git commands via vim-fugitive
return {
  'tpope/vim-fugitive',
  cmd = { 'Git', 'G' },
  keys = {
    { '<leader>gg', '<cmd>Git<cr>', desc = 'Fu[g]itive [G]it' },
    { '<leader>gb', '<cmd>Git blame<cr>', desc = 'Git blame' },
  },
}
