-- Colorscheme: catppuccin
-- Flavors: latte, frappe, macchiato, mocha
return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        flavour = 'macchiato', -- latte, frappe, macchiato, mocha
        background = {
          light = 'latte',
          dark = 'macchiato',
        },
        transparent_background = false,
        show_end_of_buffer = false,
        term_colors = false,
        dim_inactive = {
          enabled = false,
          shade = 'dark',
          percentage = 0.15,
        },
        no_italic = false,
        no_bold = false,
        no_underline = false,
        styles = {
          comments = { 'italic' },
          conditionals = { 'italic' },
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = {},
        },
        color_overrides = {},
        custom_highlights = {},
        default_integrations = true,
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          notify = false,
          mini = {
            enabled = true,
            indentscope_color = '',
          },
          telescope = { enabled = true },
          which_key = true,
          mason = true,
          native_lsp = {
            enabled = true,
            virtual_text = {
              errors = { 'italic' },
              hints = { 'italic' },
              warnings = { 'italic' },
              information = { 'italic' },
              ok = { 'italic' },
            },
            underlines = {
              errors = { 'underline' },
              hints = { 'underline' },
              warnings = { 'underline' },
              information = { 'underline' },
              ok = { 'underline' },
            },
            inlay_hints = {
              background = true,
            },
          },
        },
      }
      vim.cmd.colorscheme 'catppuccin'

      -- Follow the macOS system appearance. Setting 'background' reloads the
      -- colorscheme, and catppuccin picks the flavour from its background map.
      local function sync_background()
        vim.system({ 'defaults', 'read', '-g', 'AppleInterfaceStyle' }, { text = true }, function(res)
          local want = (res.code == 0 and res.stdout:match 'Dark') and 'dark' or 'light'
          vim.schedule(function()
            if vim.o.background ~= want then
              vim.o.background = want
            end
          end)
        end)
      end

      sync_background()
      vim.api.nvim_create_autocmd({ 'FocusGained', 'VimResume' }, { callback = sync_background })

      local timer = vim.uv.new_timer()
      timer:start(10000, 10000, vim.schedule_wrap(sync_background))
      vim.api.nvim_create_autocmd('VimLeavePre', {
        callback = function()
          if not timer:is_closing() then
            timer:close()
          end
        end,
      })
    end,
  },
}
