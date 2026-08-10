-- Show color previews for hex codes, named colors, etc.
vim.pack.add { 'https://github.com/brenoprata10/nvim-highlight-colors' }

require('nvim-highlight-colors').setup {
  render = 'virtual', -- 'background' | 'foreground' | 'virtual'
  enable_named_colors = true,
  enable_tailwind = false,
}
