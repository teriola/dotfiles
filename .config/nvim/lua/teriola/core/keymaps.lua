local opts = { noremap = true, silent = true } -- Declare options
local keymap = vim.api.nvim_set_keymap -- Shorten function name with a variable
vim.g.mapleader = " " -- Map <leader> to space
keymap("", "<Space>", "<Nop>", opts) -- Remap space as leader key





---------------------------------------------------- Normal Mode ----------------------------------------------------
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts) -- Navigate to left window
keymap("n", "<C-j>", "<C-w>j", opts) -- Navigate to top window
keymap("n", "<C-k>", "<C-w>k", opts) -- Navigate to bottom window
keymap("n", "<C-l>", "<C-w>l", opts) -- Navigate to right window

-- Navigate vertically
keymap("n", "<C-d>", "<C-d>zz", opts) -- Scroll down
keymap("n", "<C-u>", "<C-u>zz", opts) -- Scroll up

-- Navigate buffers
keymap("n", "<leader>c", ":w|bd<CR>", opts) -- Save and close buffer
keymap("n", "<leader>x", ":bd!<CR>", opts) -- Close buffer without save
keymap("n", "<leader>w", ":w<CR>", opts) -- Save buffer
keymap("n", "<leader>l", ":bnext<CR>", opts) -- Navigate to next buffer
keymap("n", "<leader>h", ":bprevious<CR>", opts) -- Navigate to previous buffer

-- Clear search highlights
keymap("n", "<leader>nh", ":nohl<CR>", opts) 

-- Better search exprerience (center window)
keymap("n", "n", "nzzzv", opts) 
keymap("n", "N", "Nzzzv", opts)

-- Deleting doesn't overwrite the default register 
keymap("n", "x", '"_x', opts)
--keymap("n", "dd", '"_dd', opts)

-- Move current line up and down
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==", opts) -- Move line up
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==", opts) -- Move line down





---------------------------------------------------- Insert mode ----------------------------------------------------
-- Exit insert mode with jj
keymap("i", "jj", "<ESC>", opts)

-- Delete previous word with ctrl + h or ctrl + backspace
keymap("i", "<C-H>", "<C-W>", opts)





---------------------------------------------------- Visual mode ----------------------------------------------------
-- Move selected text up and down
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts) -- Move text up
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts) -- Move text down

-- Don't yank text that was pasted over 
keymap("v", "p", '"_dP', opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- When paste over something in visual mode don't copy the deleted part
keymap("v", "<keymap>p", "\"_dp", opts)





---------------------------------------------------- Visual Block Mode ----------------------------------------------------
-- When paste over something in Visual block don't copy the deleted part
keymap("x", "<leader>p", "\"_dp", opts)

-- Move text up and down
keymap("x", "J", ":move '>+0<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)





---------------------------------------------------- Plugins ----------------------------------------------------
-- Harpoon
keymap("n", "<leader>a", ":lua require(\"harpoon.mark\").add_file()<CR>", opts) -- Add file to harpoon
keymap("n", "<leader>e", ":lua require(\"harpoon.ui\").toggle_quick_menu()<CR>", opts) -- Toggle file menu
keymap("n", "<leader>h", ":lua require(\"harpoon.ui\").nav_file(1)<CR>", opts) -- Navigate to file 1
keymap("n", "<leader>j", ":lua require(\"harpoon.ui\").nav_file(2)<CR>", opts) -- Navigate to file 2
keymap("n", "<leader>k", ":lua require(\"harpoon.ui\").nav_file(3)<CR>", opts) -- Navigate to file 3
keymap("n", "<leader>l", ":lua require(\"harpoon.ui\").nav_file(4)<CR>", opts) -- Navigate to file 4


-- LSP
keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts) -- Show hover information,
keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts) -- Go to definition
keymap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts) -- Show code actions

