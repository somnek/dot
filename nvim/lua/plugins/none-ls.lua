return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls") -- tho its none-ls, we still write it as 'null-ls'

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.goimports,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.golines,
			},
		})

		-- manually format
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
		-- add borders
		-- vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })
		-- vim.lsp.handlers["textDocument/signatureHelp"] =
		-- 	vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" })
	end,
}
