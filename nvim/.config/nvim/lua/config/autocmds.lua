vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Copiar o texto selecionado",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		if vim.v.event.operator ~= "y" then
			return
		end
		vim.highlight.on_yank()
		vim.notify("📋 Texto copiado para o clipboard", vim.log.levels.INFO, {
			title = "Neovim",
		})
	end,
})
vim.api.nvim_create_autocmd("BufWritePost", {
	group = vim.api.nvim_create_augroup("notify-save", { clear = true }),
	callback = function(args)
		local filename = vim.fn.fnamemodify(args.file, ":t")
		vim.notify("💾 Salvo: " .. filename, vim.log.levels.INFO, {
			title = "Neovim",
		})
	end,
})
