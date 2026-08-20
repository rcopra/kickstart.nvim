-- Colorscheme: catppuccin, macchiato flavour hardcoded (no light/dark switching)
-- The repo is catppuccin/nvim; without an explicit name vim.pack would call it "nvim"
vim.pack.add { { src = 'https://github.com/catppuccin/nvim', name = 'catppuccin' } }

require('catppuccin').setup {
  flavour = 'auto', -- latte, frappe, macchiato, mocha
  background = {
    light = 'latte',
    dark = 'mocha',
  },
  show_end_of_buffer = false,
  auto_integrations = true,
}

vim.cmd.colorscheme 'catppuccin-nvim'
