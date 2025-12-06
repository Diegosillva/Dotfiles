return {
	vim.keymap.set("n", "<c-j>", "<c-w><c-j>"),
	vim.keymap.set("n", "<c-k>", "<c-w><c-k>"),
	vim.keymap.set("n", "<c-l>", "<c-w><c-l>"),
	vim.keymap.set("n", "<c-h>", "<c-w><c-h>"),

	vim.keymap.set("n", "]]", "<cmd>cnext<CR>", { silent = true }),
	vim.keymap.set("n", "[[", "<cmd>cprev<CR>", { silent = true }),

	vim.keymap.set("i", "jj", "<Esc>", { desc = "Sair do modo de insert" }),
	vim.keymap.set("n", "<leader>w", "<cmd>:wa<CR>", { desc = "Salva todos os arquivos editados" }),
	vim.keymap.set({ "n", "t" }, "<leader>q", ":q<cr>", { silent = false, noremap = true }),
	vim.keymap.set("n", "<space><space>x", "<cmd>source % <CR>"),

	vim.keymap.set("n", "<leader>v", "<cmd>vsplit<CR>", { desc = "Dividi a tela na vertical" }),
	vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { silent = false }),
}
