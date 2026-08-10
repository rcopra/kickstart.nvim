-- Leetcode in nvim (:Leet)
vim.pack.add {
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/MunifTanjim/nui.nvim',
  'https://github.com/nvim-telescope/telescope.nvim',
  'https://github.com/kawre/leetcode.nvim',
}

-- The old lazy spec ran `:TSUpdate html` as a build step; the html treesitter
-- parser is already in the parsers list in init.lua, so no build hook is needed.
require('leetcode').setup {
  lang = 'ruby',
  picker = { provider = 'telescope' },
  theme = {},
  image_support = false,
}
