return {
  'sindrets/diffview.nvim',
  cmd = { 'DiffviewOpen', 'DiffviewFileHistory' },
  keys = {
    { '<leader>gd', '<cmd>DiffviewOpen<cr>', desc = 'Git diff view' },
    { '<leader>gf', '<cmd>DiffviewFileHistory %<cr>', desc = 'Git file history' },
    { '<leader>gh', '<cmd>DiffviewFileHistory<cr>', desc = 'Git repo history' },
    { '<leader>gm', '<cmd>DiffviewOpen main...HEAD<cr>', desc = 'PR files changed vs main' },
    { '<leader>gc', '<cmd>DiffviewFileHistory --range=main..HEAD<cr>', desc = 'PR commits vs main' },
  },
  opts = {},
}
