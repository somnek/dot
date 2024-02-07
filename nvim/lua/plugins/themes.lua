-- to set colorscheme just include `vim.cmd(colorscheme foo)` under function
return {

  -- {
  -- 	"ellisonleao/gruvbox.nvim",
  -- },

  -- {
  -- 	"folke/tokyonight.nvim",
  -- 	config = function()
  -- 		require("tokyonight").setup({
  -- 			-- your configuration comes here
  -- 			-- or leave it empty to use the default settings
  -- 			style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
  -- 			transparent = true, -- Enable this to disable setting the background color
  -- 			terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  -- 			styles = {
  -- 				-- Style to be applied to different syntax groups
  -- 				-- Value is any valid attr-list value for `:help nvim_set_hl`
  -- 				comments = { italic = false },
  -- 				keywords = { italic = false },
  -- 				-- Background styles. Can be "dark", "transparent" or "normal"
  -- 				sidebars = "dark", -- style for sidebars, see below
  -- 				floats = "dark", -- style for floating windows
  -- 			},
  -- 		})
  -- 	end,
  -- },

  -- {
  -- 	"EdenEast/nightfox.nvim",
  -- 	config = function() end,
  -- },

  -- {
  -- 	"rebelot/kanagawa.nvim",
  -- 	config = function()
  -- 		require("kanagawa").setup({
  -- 			compile = false, -- enable compiling the colorscheme
  -- 			undercurl = true, -- enable undercurls
  -- 			commentStyle = { italic = true },
  -- 			functionStyle = {},
  -- 			keywordStyle = { italic = true },
  -- 			statementStyle = { bold = true },
  -- 			typeStyle = {},
  -- 			transparent = false, -- do not set background color
  -- 			dimInactive = false, -- dim inactive window `:h hl-NormalNC`
  -- 			terminalColors = true, -- define vim.g.terminal_color_{0,17}
  -- 			colors = { -- add/modify theme and palette colors
  -- 				palette = {},
  -- 				theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
  -- 			},
  -- 			overrides = function(colors) -- add/modify highlights
  -- 				local theme = colors.theme
  -- 				return {
  -- 					NormalFloat = { bg = "none" },
  -- 					FloatBorder = { bg = "none" },
  -- 					FloatTitle = { bg = "none" },

  -- 					-- Save an hlgroup with dark background and dimmed foreground
  -- 					-- so that you can use it where your still want darker windows.
  -- 					-- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
  -- 					NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

  -- 					-- Popular plugins that open floats will link to NormalFloat by default;
  -- 					-- set their background accordingly if you wish to keep them dark and borderless
  -- 					LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
  -- 					MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },

  -- 					-- Popup menu (using uniform colors)
  -- 					Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
  -- 					PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
  -- 					PmenuSbar = { bg = theme.ui.bg_m1 },
  -- 					PmenuThumb = { bg = theme.ui.bg_p2 },

  -- 					-- Uncomment to use Block-like Telescope UI
  -- 					-- TelescopeTitle = { fg = theme.ui.special, bold = true },
  -- 					-- TelescopePromptNormal = { bg = theme.ui.bg_p1 },
  -- 					-- TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
  -- 					-- TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
  -- 					-- TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
  -- 					-- TelescopePreviewNormal = { bg = theme.ui.bg_dim },
  -- 					-- TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
  -- 				}
  -- 			end,
  -- 			theme = "wave", -- Load "wave" theme when 'background' option is not set
  -- 			background = { -- map the value of 'background' option to a theme
  -- 				dark = "wave", -- try "dragon" !
  -- 				light = "lotus",
  -- 			},
  -- 		})
  -- 		vim.cmd("colorscheme kanagawa")
  -- 	end,
  -- },

  {
    "shaunsingh/nord.nvim",
    config = function()
      vim.g.nord_contrast = false
      vim.g.nord_borders = true
      vim.g.nord_disable_background = false
      vim.g.nord_italic = false
      vim.g.nord_uniform_diff_background = true
      vim.g.nord_bold = false
      -- for markdown
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
      vim.cmd("colorscheme nord")
    end,
  },

  -- {
  --   "AlexvZyl/nordic.nvim",
  --   priority = 1000,
  --   config = function() end,
  -- },

  -- {
  -- 	"catppuccin/nvim",
  -- 	name = "catppuccin",
  -- 	priority = 1000,
  -- 	config = function() end,
  -- },

  {
    "bluz71/vim-nightfly-colors",
    name = "nightfly",
    priority = 1000,
  },
}
