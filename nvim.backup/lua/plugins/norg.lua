return {
	
		"nvim-neorg/neorg",
		build = ":Neorg sync-parsers",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("neorg").setup {
				load = {
                    ["core.dirman.utils"] = {},
                    ["core.ui"] = {},
                    ["core.integrations.treesitter"] = {},
					["core.defaults"] = {}, -- Loads default behaviour
					["core.concealer"] = {}, -- Adds pretty icons to your documents
					["core.dirman"] = { -- Manages Neorg workspaces
						config = {
							workspaces = {
								notes = "~/notes",
							},
						},
					},
                    ["core.esupports.hop"] = {},
                    ["core.qol.todo_items"] = {},
				},
			}
		end,
}
