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
}
