return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      -- shortcuts
      builtin = require("telescope.builtin")
      vim.keymap.set("n", "<C-p>", builtin.find_files, {})
      vim.keymap.set("n", "<C-g>", builtin.live_grep, {})
      vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
      vim.keymap.set("n", "<leader>th", builtin.colorscheme, {})
      vim.keymap.set("n", "<leader>sc", builtin.commands, {}) -- list of commands
      vim.keymap.set("n", "<leader>/", builtin.current_buffer_fuzzy_find, {})
      vim.keymap.set("n", "gr", builtin.lsp_references, {})

      -- enable preview theme
      require("telescope").setup({
        pickers = {
          colorscheme = {
            enable_preview = true,
          },
        },
        defaults = {
          prompt_prefix = "🔭 ",
          selection_caret = " ",
          entry_prefix = "  ",
        },
      })
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({
              -- even more opts
            }),
          },
        },
      })
      require("telescope").load_extension("ui-select")
    end,
  },
}
