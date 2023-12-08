local lspconfig = require "lspconfig"
local util = require "lspconfig/util"

---- Pyright
--lspconfig.pyright.setup {
--  on_attach=on_attach,
--  capabilities = capabilities,
--  cmd = {"pyright-langserver", "--stdio"},
--  filetypes = {"python"},
--  root_dir = util.root_pattern(".git", "setup.py", "setup.cfg", "pyproject.toml", "requirements.txt"),
--  settings = {
--    python = {
--      analysis = {
--        autoSearchPaths = true,
--        diagnosticMode = "workspace", -- workspace/openFilesOnly
--        useLibraryCodeForTypes = true,
--      },
--    },
--  },
--}

-- Go: staticcheck, gopls
lspconfig.gopls.setup {
  cmd = {"gopls", "serve"},
  filetypes = {"go", "gomod"},
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
    },
  },
}

-- Go: imports
vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*.go',
  callback = function()
    vim.lsp.buf.code_action({ context = { only = { 'source.organizeImports' } }, apply = true })
  end
})

-- Diagnostic: (errors span multiple lines)
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)

-- LSP: null-ls (formatter)
local null_ls = require("null-ls")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.gofmt,
    null_ls.builtins.formatting.goimports_reviser,
    null_ls.builtins.formatting.golines,
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.diagnostics.eslint,
    null_ls.builtins.completion.spell,
  },
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({
        group = augroup,
        buffer = bufnr,
      })
      vim.api.nvim_create_autocmd('BufWritePre', {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ bufnr = bufnr })
        end,
      })
    end
  end,
})

-- Entire official config for LSP
-- https://github.com/Integralist/nvim/blob/main/lua/plugins/lsp.lua

-- Other go-setup
-- https://www.youtube.com/watch?v=i04sSQjd-qo
