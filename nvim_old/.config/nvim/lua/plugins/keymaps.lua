return {
	-- Navigate vim panes better
	vim.keymap.set("n", "<c-k>", ":wincmd k<CR>"),
	vim.keymap.set("n", "<c-j>", ":wincmd j<CR>"),
	vim.keymap.set("n", "<c-h>", ":wincmd h<CR>"),
	vim.keymap.set("n", "<c-l>", ":wincmd l<CR>"),

	vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>"),
	vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = true }),
	vim.keymap.set("n", "<leader>w", "<cmd>wa<cr>", { silent = false }),
	vim.keymap.set("n", "<leader>q", ":q<CR>", { silent = false }),
	vim.keymap.set("n", "<leader>x", "<cmd>wq<cr>", { silent = false }),

	vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>"),
	vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>"),

	vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", { desc = "Próximo buffer" }),
	vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", { desc = "Buffer anterior" }),
	vim.keymap.set("n", "<leader>bd", "<Cmd>bd<CR>", { desc = "Fechar buffer atual" }),

	-- Split window
	-- vim.keymap.set("n", "<leader>s", ":split<CR>", { noremap = true, silent = true }),
	vim.keymap.set("n", "<leader>v", ":vsplit<CR>", { noremap = true, silent = true }),

	-- Desabilita as setas
	vim.keymap.set("n", "<Up>", "<Nop>"),
	vim.keymap.set("n", "<Down>", "<Nop>"),
	vim.keymap.set("n", "<Left>", "<Nop>"),
	vim.keymap.set("n", "<Right>", "<Nop>"),

	vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { silent = false }),
}
