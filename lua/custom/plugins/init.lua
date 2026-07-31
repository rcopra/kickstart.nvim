-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- Multi-cursor support
  {
    'mg979/vim-visual-multi',
    branch = 'master',
    init = function()
      -- Remap to avoid conflict with tmux navigation
      vim.g.VM_maps = {
        ['Add Cursor Down'] = '<C-S-Down>',
        ['Add Cursor Up'] = '<C-S-Up>',
      }
    end,
  },

  -- Test runner
  {
    'vim-test/vim-test',
    keys = {
      { '<leader>tn', ':TestNearest<CR>', desc = '[T]est [N]earest' },
      { '<leader>tf', ':TestFile<CR>', desc = '[T]est [F]ile' },
      { '<leader>ts', ':TestSuite<CR>', desc = '[T]est [S]uite' },
      { '<leader>tl', ':TestLast<CR>', desc = '[T]est [L]ast' },
      { '<leader>tv', ':TestVisit<CR>', desc = '[T]est [V]isit (go to last test file)' },
    },
    config = function()
      -- Run tests in a terminal split
      vim.g['test#strategy'] = 'neovim'
      -- Use bundle exec for Ruby
      vim.g['test#ruby#rspec#executable'] = 'bundle exec rspec'
    end,
  },
}
