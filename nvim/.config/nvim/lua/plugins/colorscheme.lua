return {
	{
		"catppuccin/nvim",
		lazy = false,
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				transparent_background = true,
				integrations = {
					neotree = true,
					treesitter = true,
					notify = false,
				},
				styles = {
					comments = { "italic" },
				},
			})

			vim.cmd.colorscheme("catppuccin-mocha")
			vim.cmd([[
      highlight CursorLine guibg=none
      ]])
		end,
	},
	-- {
	-- 	"rose-pine/neovim",
	-- 	name = "rose-pine",
	-- 	opts = {
	-- 		styles = {
	-- 			bold = false,
	-- 			italic = true,
	-- 			transparency = true,
	-- 		},
	-- 	},
	-- 	config = function(_, opts)
	-- 		require("rose-pine").setup(opts)
	-- 		vim.cmd("colorscheme rose-pine")
	-- 		vim.api.nvim_set_hl(0, "LspInlayHint", { bg = "none", fg = "#6e6a86", italic = true })
	-- 	end,
	-- },
}
