return {
  -- auto format
  vim.cmd([[
      autocmd BufWritePre * lua vim.lsp.buf.format({ async = false })
    ]]), -- or *.py for python only
}
