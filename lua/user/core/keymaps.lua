-- Declare options 
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- shorten function name with a variable
local keymap = vim.api.nvim_set_keymap

-- remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Normal --
---- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

---- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize -2<CR>", opts)

---- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

---- Clear search highlights
keymap("n", "<leader>nh", ":nohl<CR>", opts)

---- Deleting doesn't overwrite the default register 
keymap("n", "x", '"_x', opts)
keymap("n", "dd", '"_dd', opts)

---- Move current line down or up
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)

---- Stay in indent mode
-- keymap("n", "<", "<gv", opts)
-- keymap("n", ">", ">gv", opts)

-- Plugin ---- 
---- Vim-maximizer
keymap("n", "<leader>m", ":MaximizerToggle<CR>", opts)

---- Telescope 
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts) -- find files within current working directory, respects .gitignore
keymap("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", opts) -- find string in current working directory as you type
keymap("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", opts) -- find string under cursor in current working directory
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts) -- list open buffers in current neovim instance
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts) -- list available help tags

-- Nvim-tree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
-- Insert --
---- Exit insert mode with jj
keymap("i", "jj", "<ESC>", opts)

---- Delete previous word with ctrl + h
keymap("i", "<C-h>", "<C-W>", opts)

-- Visual --
---- Move selected text up and down
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)

---- Don't yank text that was pasted over 
keymap("v", "p", '"_dP', opts)

---- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)










--[[
-- split windows
keymap("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap("n", "<leader>sx", ":close<CR>") -- close current split window
 
keymap("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

-- plugin keymaps
----vim-maximizer keymap("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap("n", "<leader>fb", "<cmd>Telescope buffers_string<cr>")
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
]]--
