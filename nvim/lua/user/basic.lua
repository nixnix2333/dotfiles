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

-- windows
keymap("n", "<C-h>", "<C-w>h", default_opts);
keymap("n", "<C-j>", "<C-w>j", default_opts);
keymap("n", "<C-k>", "<C-w>k", default_opts);
keymap("n", "<C-l>", "<C-w>l", default_opts);
keymap("n", "<C-c>", "<C-w>c<cr>", default_opts)

-- tabs
keymap("n", "<C-n>", ":$tabnew<cr>", default_opts)
keymap("n", "<tab>", ":tabnext<cr>", default_opts)

-- head and tail of a line
keymap("n", "<S-h>", "^", default_opts)
keymap("n", "<S-l>", "$", default_opts)

-- select all
keymap("n", "<leader>a", "<esc><esc>ggVG", default_opts)

-- save
keymap("n", "<C-s>", ":update<cr>", default_opts)
keymap("i", "<C-s>", "<esc>:update<cr>", default_opts)

-- esc
keymap("", "<C-f>", "<nop>", default_opts)
keymap("i", "<C-f>", "<esc>", default_opts)

-- disable join
keymap("", "<S-j>", "<nop>", default_opts)
