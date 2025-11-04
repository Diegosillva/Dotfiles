return {
	{
		"rachartier/tiny-inline-diagnostic.nvim",
		event = "VeryLazy",
		priority = 1000,
		config = function()
			require("tiny-inline-diagnostic").setup({
				transparent_cursorline = true,
				transparent_bg = false,
				preset = "modern",
				hi = {

					error = "DiagnosticError", -- Highlight for error diagnostics
					warn = "DiagnosticWarn", -- Highlight for warning diagnostics
					info = "DiagnosticInfo", -- Highlight for info diagnostics
					hint = "DiagnosticHint", -- Highlight for hint diagnostics
					arrow = "NonText", -- Highlight for the arrow pointing to diagnostic
					background = "CursorLine", -- Background highlight for diagnostics
					mixing_color = "Normal", -- Color to blend background with (or "None")
				},
			})
			vim.diagnostic.config({ virtual_text = false }) -- Disable Neovim's default virtual text diagnostics
			vim.keymap.set("n", "<leader>de", "<cmd>TinyInlineDiag enable<cr>", { desc = "Enable diagnostics" })
			vim.keymap.set("n", "<leader>dd", "<cmd>TinyInlineDiag disable<cr>", { desc = "Disable diagnostics" })
			vim.keymap.set("n", "<leader>dt", "<cmd>TinyInlineDiag toggle<cr>", { desc = "Toggle diagnostics" })
		end,
	},
}
