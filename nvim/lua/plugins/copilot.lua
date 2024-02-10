return {
  "github/copilot.vim",
  config = function()
    -- disable copilot
    vim.keymap.set("n", "<leader>coo", function()
      vim.cmd("Copilot enable")
      vim.notify("   Copilot enabled")
    end)
    -- enable copilot
    vim.keymap.set("n", "<leader>cox", function()
      vim.cmd("Copilot disable")
      vim.notify(" 󰅖   Copilot disabled")
    end)
  end,
}
