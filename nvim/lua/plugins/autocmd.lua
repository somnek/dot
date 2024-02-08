 return {
   -- Add autocmds to run formatting on save for .go, .rs, and .py files
   vim.cmd([[
   augroup null_ls_formatting
     autocmd!
     autocmd BufWritePre * lua vim.lsp.buf.format({ async = false })
   augroup END
 ]]),
 }

