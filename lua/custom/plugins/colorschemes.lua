-- Colorschemes
-- You can install multiple themes and switch between them with :Telescope colorscheme
-- or <space>ss then search for 'colorscheme'
return {
  { 'rebelot/kanagawa.nvim' },
  { 'catppuccin/nvim', name = 'catppuccin' },
  { 'folke/tokyonight.nvim' },
  { 'rose-pine/neovim', name = 'rose-pine' },
  { 'ellisonleao/gruvbox.nvim', name = 'gruvbox' },

  { -- Set the default colorscheme here
    'rebelot/kanagawa.nvim',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'kanagawa'
    end,
  },
}
