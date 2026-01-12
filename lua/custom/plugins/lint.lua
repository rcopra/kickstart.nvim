return {
  {
    'mfussenegger/nvim-lint',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      local lint = require 'lint'

      -- Only markdown needs nvim-lint now
      -- Ruby: handled by ruby_lsp
      -- JS/TS: handled by ESLint LSP
      lint.linters_by_ft = {
        markdown = { 'markdownlint' },
      }

      -- Lint on save for markdown files
      vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
        pattern = { '*.md' },
        callback = function()
          lint.try_lint()
        end,
      })
    end,
  },
}
