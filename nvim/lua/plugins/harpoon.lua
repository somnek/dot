return {
  "ThePrimeagen/harpoon",
  config = function()
    local harpoon_ui = require("harpoon.ui")
    local harpoon_mark = require("harpoon.mark")

    vim.keymap.set("n", "<leader>hq", harpoon_ui.toggle_quick_menu, {})
    vim.keymap.set("n", "<leader>ha", harpoon_mark.add_file, {})
    vim.keymap.set("n", "<leader>hx", harpoon_mark.rm_file, {})
    vim.keymap.set("n", "<leader>hc", harpoon_mark.clear_all, {})
    vim.keymap.set("n", "<leader>1", "<cmd>lua require('harpoon.ui').nav_file(1)<CR>", {})
    vim.keymap.set("n", "<leader>2", "<cmd>lua require('harpoon.ui').nav_file(2)<CR>", {})
    vim.keymap.set("n", "<leader>3", "<cmd>lua require('harpoon.ui').nav_file(3)<CR>", {})
    vim.keymap.set("n", "<leader>4", "<cmd>lua require('harpoon.ui').nav_file(4)<CR>", {})
    vim.keymap.set("n", "<leader>5", "<cmd>lua require('harpoon.ui').nav_file(5)<CR>", {})
    -- maybe tryout ",1" instead of "<leader>1" see you like it
  end,
}
