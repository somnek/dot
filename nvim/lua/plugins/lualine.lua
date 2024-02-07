return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "nord",
			},
		})
	end,
}
-- themes: https://github.com/nvim-lualine/lualine.nvim/blob/master/THEMES.md
