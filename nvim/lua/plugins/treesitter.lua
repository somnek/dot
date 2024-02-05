return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      auto_install = true, -- automaticall install for unregconize language
      ensure_installed = { "go", "lua", "javascript", "python", "rust", "typescript" },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
