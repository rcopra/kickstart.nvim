-- Additional colorschemes (tokyonight is in init.lua as the kickstart default)
-- Switch between them with :Telescope colorscheme or <space>ss
return {
  { 'rebelot/kanagawa.nvim' },
  { 'catppuccin/nvim', name = 'catppuccin' },
  { 'rose-pine/neovim', name = 'rose-pine' },
  { 'ellisonleao/gruvbox.nvim', name = 'gruvbox' },
  { 'Mofiqul/dracula.nvim' },

  { -- Override the default colorscheme here
    'sainnhe/gruvbox-material',
    name = 'gruvbox-material-default',
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_background = 'hard'
      vim.g.gruvbox_material_foreground = 'mix'
      vim.g.gruvbox_material_better_performance = 1
      vim.cmd.colorscheme 'gruvbox-material'
    end,
  },
}
