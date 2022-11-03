-- basic
vim.opt.encoding = "utf-8"
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.cursorline = true

-- tabstop
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4

-- search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- keymaps
local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

-- leader key
keymap("", "<space>", "<nop>", default_opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- lexplore 
keymap("n", "<leader>e", ":Lex 25<cr>", default_opts)

-- tabs
keymap("n", "<C-n>", ":$tabnew<cr>", default_opts)
keymap("n", "<C-h>", ":tabprevious<cr>", default_opts)
keymap("n", "<C-l>", ":tabnext<cr>", default_opts)
keymap("n", "<C-c>", "<C-w>c<cr>", default_opts)

-- select all
keymap("n", "<leader>a", "ggVG", default_opts)

-- save
keymap("n", "<C-s>", ":update<cr>", default_opts)
keymap("i", "<C-s>", "<C-o>:update<cr>", default_opts)
