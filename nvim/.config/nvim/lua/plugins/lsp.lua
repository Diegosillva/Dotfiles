return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },

	config = function()
		local lspconfig = require("lspconfig")
		local capabilities = vim.tbl_deep_extend("force", {}, vim.lsp.protocol.make_client_capabilities())

		-- Carregar configs individuais
		require("plugins.lsp.lua_ls")(lspconfig, capabilities)
		require("plugins.lsp.pyright")(lspconfig, capabilities)
		require("plugins.lsp.gopls")(lspconfig, capabilities)

		-- Keymaps e recursos quando o LSP conectar ao buffer
		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("my_lsp_attach", {}),
			callback = function(ev)
				local bufnr = ev.buf

				-- Keymaps LSP
				local opts = { buffer = bufnr, silent = true }

				vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
				vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
				vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, opts) -- Renomear variavel
				vim.keymap.set("n", "<leader>dt", "<cmd>Telescope diagnostics<cr>", opts)
				vim.keymap.set("n", "<C-j>", "<cmd>Telescope lsp_document_symbols<CR>", opts)
				vim.keymap.set("n", "<leader>fs", vim.lsp.buf.format, { buffer = bufnr, desc = "Formatar com LSP" })
				vim.keymap.set("i", "<C-Space>", vim.lsp.buf.completion, { buffer = bufnr, desc = "Autocomplete LSP" })
				vim.keymap.set(
					"n",
					"<leader>dq",
					vim.diagnostic.setqflist,
					{ buffer = bufnr, desc = "Diagnostics Quickfix" }
				)
				vim.keymap.set("n", "<leader>dx", "<cmd>cclose<CR>", { buffer = bufnr, desc = "Fechar Quickfix" })

				-- Autocomplete automático se o LSP suportar
				local client = vim.lsp.get_client_by_id(ev.data.client_id)
				if client and client:supports_method("textDocument/completion") then
					vim.lsp.completion.enable(true, client.id, bufnr, { autotrigger = true })
				end
			end,
		})
	end,
}
