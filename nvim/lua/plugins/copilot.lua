return {
	"github/copilot.vim",
	config = function()
		-- disable copilot
		vim.keymap.set("n", "<leader>coo", "<cmd>Copilot enable<cr>")
		vim.keymap.set("n", "<leader>cox", "<cmd>Copilot disable<cr>")
	end,
}
