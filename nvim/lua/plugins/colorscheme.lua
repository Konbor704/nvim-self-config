-- Theme/Colorscheme
return {
  -- https://github.com/rebelot/kanagawa.nvim
  -- 'rebelot/kanagawa.nvim',
  -- "folke/tokyonight.nvim",
  "catppuccin/nvim",
  -- You can replace this with your favorite colorscheme
  lazy = false,   -- We want the colorscheme to load immediately when starting Neovim
  priority = 1000, -- Load the colorscheme before other non-lazy-loaded plugins
  config = function()
    require("catppuccin").setup({
      flavor = "mocha",
      background = {
        light = "latte",
        dark = "mocha",
      },
      transparent_background = true,
      no_italic = false,
      no_bold = false,
      no_underline = false,
    })
    -- TOKYONIGHT
    -- opts = {
    -- background = {
    --   dark = "wave",
    -- },
    -- transparent = true,
    -- },
    -- config = function(_, opts)
    -- config = function()
    -- 	require("tokyonight").setup({
    -- 		style = "night",
    -- 		transparent = true,
    -- 		terminal_colors = true,
    -- 		lualine_bold = true,
    --
    -- 		on_highlights = function(hl, c)
    -- 			local prompt = "#2d3149"
    -- 			hl.TelescopeNormal = {
    -- 				bg = c.bg_dark,
    -- 				fg = c.fg_dark,
    -- 			}
    -- 			hl.TelescopeBorder = {
    -- 				bg = c.bg_dark,
    -- 				fg = c.bg_dark,
    -- 			}
    -- 			hl.TelescopePromptNormal = {
    -- 				bg = prompt,
    -- 			}
    -- 			hl.TelescopePromptBorder = {
    -- 				bg = prompt,
    -- 				fg = prompt,
    -- 			}
    -- 			hl.TelescopePromptTitle = {
    -- 				bg = prompt,
    -- 				fg = prompt,
    -- 			}
    -- 			hl.TelescopePreviewTitle = {
    -- 				bg = c.bg_dark,
    -- 				fg = c.bg_dark,
    -- 			}
    -- 			hl.TelescopeResultsTitle = {
    -- 				bg = c.bg_dark,
    -- 				fg = c.bg_dark,
    -- 			}
    -- 		end,
    -- 	})
    vim.cmd("colorscheme catppuccin") -- Replace this with your favorite colorscheme
    -- Colorscheme overrides
    -- vim.cmd([[
    --   autocmd VimEnter * hi DiffAdd guifg=#00FF00 guibg=#005500
    --   autocmd VimEnter * hi DiffDelete guifg=#FF0000 guibg=#550000
    --   autocmd VimEnter * hi DiffChange guifg=#CCCCCC guibg=#555555
    --   autocmd VimEnter * hi DiffText guifg=#00FF00 guibg=#005500
    -- ]])
  end,
}
