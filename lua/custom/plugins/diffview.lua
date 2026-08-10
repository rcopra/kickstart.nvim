-- Git diff/history views
vim.pack.add { 'https://github.com/sindrets/diffview.nvim' }

require('diffview').setup {}

vim.keymap.set('n', '<leader>gd', '<cmd>DiffviewOpen<cr>', { desc = 'Git diff view' })
vim.keymap.set('n', '<leader>gf', '<cmd>DiffviewFileHistory %<cr>', { desc = 'Git file history' })
vim.keymap.set('n', '<leader>gh', '<cmd>DiffviewFileHistory<cr>', { desc = 'Git repo history' })
vim.keymap.set('n', '<leader>gm', '<cmd>DiffviewOpen main...HEAD<cr>', { desc = 'PR files changed vs main' })
vim.keymap.set('n', '<leader>gc', '<cmd>DiffviewFileHistory --range=main..HEAD<cr>', { desc = 'PR commits vs main' })
