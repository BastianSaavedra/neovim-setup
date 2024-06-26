local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- Modes
-- 	normal_mode = 'n'
-- 	insert_mode = 'i'
-- 	visual_mode = 'v'
-- 	visual_block_mode = 'x'
-- 	term_mode = 't'
-- 	command_mode = 'c'
--
-- C = ctrl
-- M = alt
-- S = shift

-- NORMAL --
-- Better window navigation
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Jump
keymap("n", "<leader>l", "$", opts)
keymap("n", "<leader>h", "^", opts)

-- Resize with alt + hjkl
keymap("n", "<M-j>", ":resize -2<CR>", opts)
keymap("n", "<M-k>", ":resize +2<CR>", opts)
keymap("n", "<M-h>", ":vertical resize -2<CR>", opts)
keymap("n", "<M-l>", ":vertical resize +2<CR>", opts)

-- Save file
keymap("n", "<Leader>w", ":w<CR>", {})

-- NvimTree
keymap("n", "<Leader>n", ":NvimTreeToggle<CR>", opts)

-- Close current buffer
keymap("n", "<C-b>", ":bd<CR>", {})

-- Navigate buffers
keymap("n", "<TAB>", ":bnext<CR>", opts)
keymap("n", "<S-TAB>", ":bprevious<CR>", opts)

-- Restart Lua
keymap("n", "<Leader>fl", ":luafile%<CR>", opts)

-- Open Terminal
keymap("n", "<leader>t", ":split term://fish<CR>", opts)

-- INSERT --
-- Remap escape
keymap("n", "<C-c>", "<Esc>", {})
keymap("i", "jk", "<Esc>", {})

-- Quit
keymap("n", "<Leader>q", ":q<CR>", {})

-- VISUAL --
-- Better tabbing
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
