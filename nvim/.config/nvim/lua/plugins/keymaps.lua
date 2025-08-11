return {
	-- Navigate vim panes better
	vim.keymap.set("n", "<c-k>", ":wincmd k<CR>"),
	vim.keymap.set("n", "<c-j>", ":wincmd j<CR>"),
	vim.keymap.set("n", "<c-h>", ":wincmd h<CR>"),
	vim.keymap.set("n", "<c-l>", ":wincmd l<CR>"),

	vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>"),
	vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = true }),
	-- Split window
	vim.keymap.set("n", "ss", ":split<CR>", { noremap = true, silent = true }),
	vim.keymap.set("n", "sv", ":vsplit<CR>", { noremap = true, silent = true }),
	-- Desabilita as setas
	vim.keymap.set("n", "<Up>", "<Nop>"),
	vim.keymap.set("n", "<Down>", "<Nop>"),
	vim.keymap.set("n", "<Left>", "<Nop>"),
	vim.keymap.set("n", "<Right>", "<Nop>"),

	-- Movimentar cursor no modo inserção com Ctrl + h/j/k/l
	-- vim.api.nvim_set_keymap("i", "<C-h>", "<Left>", { noremap = true, silent = true }),
	-- vim.api.nvim_set_keymap("i", "<C-l>", "<Right>", { noremap = true, silent = true }),
	-- vim.api.nvim_set_keymap("i", "<C-j>", "<Down>", { noremap = true, silent = true }),
	-- vim.api.nvim_set_keymap("i", "<C-k>", "<Up>", { noremap = true, silent = true }),
}
