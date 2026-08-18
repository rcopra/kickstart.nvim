-- Git commands via vim-fugitive
vim.pack.add { 'https://github.com/tpope/vim-fugitive' }

vim.keymap.set('n', '<leader>gg', '<cmd>Git<cr>', { desc = 'Fu[g]itive [G]it' })
vim.keymap.set('n', '<leader>gb', '<cmd>Git blame<cr>', { desc = 'Git blame' })
