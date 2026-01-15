-- Markdown Preview
-- Preview markdown files in browser
return {
  'iamcco/markdown-preview.nvim',
  cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
  ft = { 'markdown' },
  build = ':call mkdp#util#install()',
  init = function()
    vim.g.mkdp_auto_close = 0 -- Auto-close when leaving buffer
  end,
}
