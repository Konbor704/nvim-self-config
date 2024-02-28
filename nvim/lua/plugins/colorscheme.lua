return {
	-- https://github.com/rebelot/kanagawa.nvim
	-- "rebelot/kanagawa.nvim",
	-- "folke/tokyonight.nvim",
	"catppuccin/nvim",
	lazy = false, -- We want the colorscheme to load immediately when starting Neovim
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

		vim.cmd("colorscheme catppuccin")
	end,
}
