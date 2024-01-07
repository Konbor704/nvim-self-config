return {

	"nvim-neorg/neorg",
	build = ":Neorg sync-parsers",
	dependencies = { { "nvim-lua/plenary.nvim" }, { "nvim-neorg/neorg-telescope" }, { "laher/neorg-exec" } },
	config = function()
		require("neorg").setup({
			load = {
				["core.dirman.utils"] = {},
				["core.ui"] = {},
				["core.integrations.treesitter"] = {},
				["core.defaults"] = {}, -- Loads default behaviour
				["core.concealer"] = {}, -- Adds pretty icons to your documents
				["core.dirman"] = { -- Manages Neorg workspaces
					config = {
						workspaces = {
							notes = "~/Norg",
						},
					},
				},
				["core.esupports.hop"] = {},
				["core.qol.todo_items"] = {},
        ["core.integrations.telescope"] = {},
        ["external.exec"] = {},
        ["core.esupports.indent"] = {},
        ["core.esupports.metagen"] = {},
        ["core.upgrade"] = {},
        ["core.tangle"] = {},
        ["core.qol.toc"] = {},
        ["core.integrations.nvim-cmp"] = {},
        ["core.mode"] = {},
        ["core.highlights"] = {},
        ["core.neorgcmd.commands.module.list"] = {},
        ["core.neorgcmd"] = {},
			},
		})
	end,
}
