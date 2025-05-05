return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier.with({
					filetypes = { "lua", "javascript", "typescript", "markdown", "json", "html", "css" },
				}),
				null_ls.builtins.completion.spell,
				null_ls.builtins.formatting.gofumpt,
				null_ls.builtins.formatting.goimports,
				null_ls.builtins.formatting.golines,
			},
			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_create_autocmd("BufWritePre", {
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format({ bufnr = bufnr })
						end,
					})
				end
			end,
			-- on_attach = function(client, bufnr)
			-- 	if client.supports_method("textDocument/formatting") then
			-- 		vim.api.nvim_create_autocmd("BufWritePre", {
			-- 			buffer = bufnr,
			-- 			callback = function()
			-- 				vim.lsp.buf.format({
			-- 					bufnr = bufnr,
			-- 					filter = function(c)
			-- 						return c.name == "null-ls"
			-- 					end,
			-- 				})
			-- 			end,
			-- 		})
			-- 	end
			-- end,
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "Formatar com LSP" })
		vim.keymap.set("n", "<leader>gf", function()
			vim.lsp.buf.format({
				filter = function(client)
					return client.name == "null-ls"
				end,
			})
		end, { desc = "Formatar com null-ls" })
	end,
}
