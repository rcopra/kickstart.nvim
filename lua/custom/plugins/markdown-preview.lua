-- Markdown Preview: preview markdown files in browser
vim.g.mkdp_auto_close = 0 -- Don't auto-close when leaving buffer
vim.g.mkdp_preview_options = {
  mkit = {},
  katex = {},
  uml = {},
  maid = {},
  disable_sync_scroll = 1,
  sync_scroll_type = 'middle',
}

-- The plugin needs its bundled preview app installed once after install/update
-- (was `build = ':call mkdp#util#install()'` in the lazy.nvim spec).
vim.api.nvim_create_autocmd('PackChanged', {
  callback = function(ev)
    if ev.data.spec.name ~= 'markdown-preview.nvim' then return end
    if ev.data.kind ~= 'install' and ev.data.kind ~= 'update' then return end
    if not ev.data.active then vim.cmd.packadd 'markdown-preview.nvim' end
    vim.fn['mkdp#util#install']()
  end,
})

vim.pack.add { 'https://github.com/iamcco/markdown-preview.nvim' }
