-- Additional colorschemes (tokyonight is in init.lua as the kickstart default)
-- Switch between them with :Telescope colorscheme or <space>ss
return {
  { 'rebelot/kanagawa.nvim' },
  { 'catppuccin/nvim', name = 'catppuccin' },
  { 'rose-pine/neovim', name = 'rose-pine' },
  { 'ellisonleao/gruvbox.nvim', name = 'gruvbox' },
  { 'Mofiqul/dracula.nvim' },

  { -- Override the default colorscheme here
    'rose-pine/neovim',
    name = 'rose-pine-default',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'rose-pine-moon'
    end,
  },
}
