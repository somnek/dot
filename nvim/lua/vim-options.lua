vim.cmd("set termguicolors")
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
vim.keymap.set("n", "<leader>p", '"+P') -- why would you need this?
-- vim.keymap.set("n", "<leader>p", "_dP")

-- redo
vim.keymap.set("n", "U", "<C-r>")

vim.cmd("command Two set tabstop=2 shiftwidth=2")
vim.cmd("command Four set tabstop=4 shiftwidth=4")

-- -- -- borders
-- vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })
-- vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" })

-- windows
vim.keymap.set("n", "<leader>rw", "<C-w>r", { desc = "Rotate windows" })

-- L & H to jump to start and end of line
vim.keymap.set({ "v", "n" }, "L", "$")
vim.keymap.set({ "v", "n" }, "H", "^")

-- more jumping + centering
vim.keymap.set("n", "G", "Gzz")
vim.keymap.set("n", "gg", "ggzz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")
vim.keymap.set("n", "{", "{zz")
vim.keymap.set("n", "}", "}zz")
vim.keymap.set("n", "<C-i>", "<C-i>zz")
vim.keymap.set("n", "<C-o>", "<C-o>zz")
vim.keymap.set("n", "%", "%zz")
vim.keymap.set("n", "#", "#zz")

-- toggle hidden files
vim.keymap.set("n", "<leader>H <CR>", ":normal H")
