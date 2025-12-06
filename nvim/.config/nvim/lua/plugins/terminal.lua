vim.api.nvim_create_autocmd("TermOpen", {
	group = vim.api.nvim_create_augroup("custom-term-open", {}),
	callback = function()
		vim.opt_local.number = false
		vim.opt_local.relativenumber = false
		vim.opt_local.scrolloff = 0
		vim.bo.filetype = "terminal"
		vim.cmd("startinsert")
	end,
})

vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>:tabclose<CR>")

vim.keymap.set("n", "<leader>t", function()
	vim.cmd("tabnew | terminal")
	vim.cmd("startinsert")
end, { desc = "Terminal fullscreen em nova aba" })

vim.keymap.set("n", ",tt", function()
	vim.cmd("terminal | startinsert")
end, { desc = "Terminal fullscreen no buffer atual" })
return {}
