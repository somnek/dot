-- set lazypath variable
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- check if lazy/lazy.nvim exist in $lazypath, else clone it
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- load from files (these file structures is lazynvim features)
require("vim-options") -- look for ./lua/vim-options.lua

-- look for lua/plugins/*.lua
require("lazy").setup("plugins", {
  change_detection = {
    notify = false,
  },
})

-- look for ./lua/neovide.lua
require("neovide")
require("custom")

vim.cmd("colorscheme gruvbox-material")
