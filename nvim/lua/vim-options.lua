vim.cmd("set expandtab")
vim.cmd("set relativenumber")
vim.cmd("set autoindent")
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set smarttab")
vim.cmd("set softtabstop=2")
vim.cmd("set number")
vim.cmd("set hidden")
vim.cmd("set nowrap")
vim.cmd("set scrolloff=8")
vim.cmd("set sidescrolloff=8")
vim.cmd("set title")
vim.cmd("set noshowmode")
vim.g.mapleader = " "

-- yank / paste
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')
vim.keymap.set("n", "<leader>p", '"+p')
vim.keymap.set("n", "<leader>P", '"+P')

-- borders
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" })
