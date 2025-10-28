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
vim.opt.relativenumber = true
vim.opt.syntax = on
vim.opt.showtabline = 2
vim.wo.number = true
vim.g.autoformat = true
vim.g.mapleader = " "
vim.opt.incsearch = true

vim.api.nvim_create_autocmd("textyankpost", {
	group = vim.api.nvim_create_augroup("highlight_yank", { clear = true }),
	pattern = "*",
	desc = "highlight selection on yank",
	callback = function()
		vim.highlight.on_yank({ timeout = 200, visual = true })
	end,
})

vim.cmd([[
  highlight CursorNormal guifg=#1E1E2E guibg=#A6E3A1   " verde suave
  highlight CursorInsert guifg=#1E1E2E guibg=#89B4FA   " azul claro
  highlight CursorVisual guifg=#1E1E2E guibg=#F38BA8   " rosa pastel
  highlight YankHighlight guibg=#F9E2AF guifg=#1E1E2E  " amarelo suave para cópia
]])

-- vim.cmd([[
--   highlight CursorNormal guifg=white guibg=#5fff5f
--   highlight CursorInsert guifg=white guibg=#8C1620
--   highlight CursorVisual guifg=black guibg=#5f5fff
--   highlight YankHighlight guibg=#005f87 guifg=white
-- ]])

vim.opt.guicursor = table.concat({
	"n:block-CursorNormal", -- modo normal
	"i:ver25-CursorInsert", -- modo insert
	"v:block-CursorVisual", -- modo visual
	"c:hor20-CursorCommand", -- modo command-line (opcional)
}, ",")

-- vim.o.background = "light"
