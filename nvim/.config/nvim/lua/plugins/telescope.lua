return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = {
			"nvim-lua/plenary.nvim",
			-- { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		},
		config = function()
			require("telescope").setup({
				defaults = {
					prompt_prefix = "$ ",
				},
				extensions = {
					fzf = {},
				},
				["ui-select"] = {
					require("telescope.themes").get_dropdown({}),
				},
			})

			pcall(require("telescope").load_extension, "fzf")
			pcall(require("telescope").load_extension, "ui-select")

			-- Keymaps Telescope
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>fh", builtin.help_tags)
			vim.keymap.set("n", "<leader>fd", builtin.find_files)
			vim.keymap.set({ "n", "v" }, "tr", builtin.registers)

			vim.keymap.set("n", "<leader>bf", function()
				builtin.buffers({ sort_lastused = true, ignore_current_buffer = true })
			end, { desc = "Listar buffers" })

			vim.keymap.set("n", "<space>ft", function()
				return builtin.git_files({ cwd = vim.fn.expand("%:h") })
			end)

			vim.keymap.set("n", "<space>en", function()
				builtin.find_files({
					cwd = vim.fn.stdpath("config"),
				})
			end)

			vim.keymap.set("n", "<space>ep", function()
				builtin.find_files({
					cwd = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy"),
				})
			end)

			vim.keymap.set("n", "<space>sh", function()
				builtin.find_files({ cwd = "~/Documentos/sheetsVim" })
			end)
		end,
	},
}
