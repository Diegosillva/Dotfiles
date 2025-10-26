return {
	{ "numtostr/comment.nvim" }, -- comentário
	{ "windwp/nvim-ts-autotag", opts = {} },
	{ "editorconfig/editorconfig-vim" },
	{ "j-hui/fidget.nvim", opts = {} },
	{ "mluders/comfy-line-numbers.nvim" },
	{
		"ray-x/go.nvim",
		dependencies = { -- optional packages
			"ray-x/guihua.lua",
			"neovim/nvim-lspconfig",
			"nvim-treesitter/nvim-treesitter",
		},
		opts = {},
	},
	{ "windwp/nvim-autopairs", event = "InsertEnter", config = true },

	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("bufferline").setup({
				options = {
					-- style_preset = bufferline.style_preset.no_italic,
					diagnostics = "nvim_lsp",
					show_buffer_close_icons = false,
					show_buffer_icons = true,
					separator_style = "slant",
					modified_icon = "● ",
					middle_mouse_command = nil,
					color_icons = true,
					hover = {
						enabled = true,
						delay = 200,
						reveal = { "close" },
					},
				},
			})
		end,
	},
}
