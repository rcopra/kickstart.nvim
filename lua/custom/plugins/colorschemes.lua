-- Additional colorschemes (tokyonight is in init.lua as the kickstart default)
-- Switch between them with :Telescope colorscheme or <space>ss
return {
  { 'rebelot/kanagawa.nvim' },
  { 'catppuccin/nvim', name = 'catppuccin' },
  { 'rose-pine/neovim', name = 'rose-pine' },
  {
    'ellisonleao/gruvbox.nvim',
    name = 'gruvbox',
    priority = 1000,
    config = function()
      require('gruvbox').setup {
        contrast = 'hard',
      }
      vim.cmd.colorscheme 'gruvbox'
    end,
  },
  { 'Mofiqul/dracula.nvim' },
}
