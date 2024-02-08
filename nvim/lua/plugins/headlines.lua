return {
  "lukas-reineke/headlines.nvim",
  dependencies = "nvim-treesitter/nvim-treesitter",
  config = function()
    require("headlines").setup({
      markdown = {
        headline_highlights = {
          "Headline1",
          "Headline2",
          "Headline3",
          "Headline4",
          "Headline5",
          "Headline6",
        },
        codeblock_highlight = "CodeBlock",
        dash_highlight = "Dash",
        quote_highlight = "Quote",
        fat_headline_lower_string = "▀", -- https://github.com/lukas-reineke/headlines.nvim/issues/61
      },
    })
  end,
}
