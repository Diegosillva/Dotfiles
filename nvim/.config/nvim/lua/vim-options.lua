-- [[ Configurações Básicas ]]
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.clipboard = "unnamedplus"
vim.opt.cursorline = true
vim.opt.colorcolumn = "80"
vim.opt.swapfile = false
vim.opt.signcolumn = "yes"
vim.opt.breakindent = true
vim.opt.smartindent = true

vim.cmd([[
  highlight CursorNormal guifg=white guibg=#5fff5f
  highlight CursorInsert guifg=white guibg=#8C1620
  highlight CursorVisual guifg=black guibg=#5f5fff
]])

vim.opt.guicursor = table.concat({
	"n:block-CursorNormal", -- modo normal
	"i:ver25-CursorInsert", -- modo insert
	"v:block-CursorVisual", -- modo visual
	"c:hor20-CursorCommand", -- modo command-line (opcional)
}, ",")

vim.wo.number = true

vim.g.autoformat = true
vim.g.mapleader = " "
-- vim.o.background = "light"
