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
                    "gosum",
					"javascript",
					"typescript",
					"json",
					"lua",
					"sql",
                    "python",
                    "vim",
				},
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
}
