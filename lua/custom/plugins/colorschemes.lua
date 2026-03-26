-- Colorschemes: switch between them with :Telescope colorscheme or <Space>ss
-- Only one should have an active vim.cmd.colorscheme line — that's your default.
return {

  -- Installed but not configured — activate with :colorscheme <name>
  { 'rebelot/kanagawa.nvim' },
  { 'catppuccin/nvim', name = 'catppuccin' },
  { 'Mofiqul/dracula.nvim' },
  { 'vague-theme/vague.nvim' },
  { 'rose-pine/neovim' },
  { 'navarasu/onedark.nvim' },
  { 'ellisonleao/gruvbox.nvim' },

  -- Active colorscheme
  {
    'ribru17/bamboo.nvim',
    priority = 1000,
    config = function()
      require('bamboo').setup {
        style = 'multiplex', -- 'vulgaris', 'multiplex', and 'light'
        code_style = {
          comments = { italic = true },
        },
      }
      vim.cmd.colorscheme 'bamboo'
    end,
  },
}
