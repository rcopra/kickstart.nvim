-- Colorschemes
-- You can install multiple themes and switch between them with :Telescope colorscheme
-- or <space>ss then search for 'colorscheme'
return {
  { 'rebelot/kanagawa.nvim' },
  { 'catppuccin/nvim', name = 'catppuccin' },
  { 'folke/tokyonight.nvim' },
  { 'rose-pine/neovim', name = 'rose-pine' },
  { 'ellisonleao/gruvbox.nvim', name = 'gruvbox' },

  { 'Mofiqul/dracula.nvim' },

  { -- Set the default colorscheme here
    'rose-pine/neovim',
    name = 'rose-pine-default',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'rose-pine-moon'
    end,
  },
}
