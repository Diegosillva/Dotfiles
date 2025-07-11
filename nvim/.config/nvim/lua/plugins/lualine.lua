return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				-- theme = "tokyonight",
				theme = "catppuccin",
			},
			sections = {
				lualine_a = {
					{
						"diagnostics",
						sources = { "nvim_diagnostic" },

						sections = { "error", "warn", "info", "hint" },

						diagnostics_color = {
							error = "DiagnosticError", -- Changes diagnostics' error color.
							warn = "DiagnosticWarn", -- Changes diagnostics' warn color.
							info = "DiagnosticInfo", -- Changes diagnostics' info color.
							hint = "DiagnosticHint", -- Changes diagnostics' hint color.
						},
						symbols = { error = "E", warn = "W", info = "I", hint = "H" },
						colored = true, -- Displays diagnostics status in color if set to true.
						update_in_insert = false, -- Update diagnostics in insert mode.
						always_visible = false, -- Show diagnostics even if there are none.
					},
				},
			},
		})
	end,
}
