vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("highlight_yank", { clear = true }),
  pattern = "*",
  desc = "Highlight yank",
  callback = function()
    vim.highlight.on_yank({ visual = true, timeout = 200 })
  end,
})
