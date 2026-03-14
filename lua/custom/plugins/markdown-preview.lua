-- Markdown Preview
-- Preview markdown files in browser
return {
  'iamcco/markdown-preview.nvim',
  cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
  ft = { 'markdown' },
  build = ':call mkdp#util#install()',
  init = function()
    -- Add your configuration here
    vim.g.mkdp_auto_close = 0 -- Auto-close when leaving buffer
    vim.g.mkdp_preview_options = {
      mkit = {},
      katex = {},
      uml = {},
      maid = {},
      disable_sync_scroll = 1,
      sync_scroll_type = 'middle',
    }
  end,
}
