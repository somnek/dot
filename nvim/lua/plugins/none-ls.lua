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
		vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, {})
		vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, {}) -- show diagnostic in bottom new pane
		vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, {})
		vim.keymap.set("n", "]d", vim.diagnostic.goto_next, {})
	end,
}
