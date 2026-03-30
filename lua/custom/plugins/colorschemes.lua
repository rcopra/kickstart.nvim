-- Colorschemes: switch between them with :Telescope colorscheme or <Space>ss
-- Only one should have an active vim.cmd.colorscheme line — that's your default.
return {

  -- Installed but not configured — activate with :colorscheme <name>
  { 'catppuccin/nvim', name = 'catppuccin' },
  { 'Mofiqul/dracula.nvim' },
  { 'vague-theme/vague.nvim' },
  { 'rose-pine/neovim' },
  { 'navarasu/onedark.nvim' },
  { 'ellisonleao/gruvbox.nvim' },
  { 'ribru17/bamboo.nvim' },

  -- Active colorscheme
  {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    config = function()
      require('kanagawa').setup {
        compile = false,
        undercurl = true,
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = false,
        dimInactive = false,
        terminalColors = true,
        colors = {
          palette = {
            -- Uncomment and modify to override palette colors
            -- sumiInk0 = "#16161D",  -- darkest background
            -- fujiWhite = "#DCD7BA", -- default foreground
          },
          theme = {
            dragon = {
              ui = {
                -- Uncomment to override dragon UI colors
                -- bg = "#181616",
                -- fg = "#c5c9c5",
              },
              syn = {
                -- Uncomment to override dragon syntax colors
                -- comment = "#625e5a",
              },
            },
            all = {},
          },
        },
        overrides = function(colors)
          return {
            -- Uncomment to override specific highlight groups
            -- Comment = { fg = colors.palette.fujiGray, italic = true },
            -- ['@comment'] = { fg = colors.palette.fujiGray, italic = true },
          }
        end,
        theme = 'wave',
        background = {
          dark = 'wave',
          light = 'lotus',
        },
      }
      vim.cmd.colorscheme 'kanagawa'
    end,
  },
}
