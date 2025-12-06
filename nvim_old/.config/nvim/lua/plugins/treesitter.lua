return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				auto_install = false,
				ensure_installed = {
					"bash",
					"ruby",
					"markdown",
					"html",
					"css",
					"scss",
					"go",
					"gomod",
					"kotlin",
					"gosum",
					"javascript",
					"typescript",
					"json",
					"lua",
					"sql",
				},
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
}
