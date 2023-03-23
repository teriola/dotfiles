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

-- Navigate vertically
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

---- Navigate buffers
keymap("n", "<leader>l", ":bnext<CR>", opts)
keymap("n", "<leader>h", ":bprevious<CR>", opts)
keymap("n", "<leader>c", ":w|bd<CR>", opts) -- Save and close buffer
keymap("n", "<leader>x", ":bd!<CR>", opts) -- Close buffer without save
keymap("n", "<leader>w", ":w<CR>", opts) -- Save buffer

---- Clear search highlights
keymap("n", "<leader>h", ":nohl<CR>", opts)

-- Better search exprerience
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

---- Deleting doesn't overwrite the default register 
keymap("n", "x", '"_x', opts)
--keymap("n", "dd", '"_dd', opts)

---- Move current line down or up
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==", opts)
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==", opts)

---- Stay in indent mode / doesn't work for some reason
-- keymap("n", "<", "<gv", opts)
-- keymap("n", ">", ">gv", opts)

---- Windows
keymap("n", "<leader>sh", "<C-w>s", opts) -- split window horizontally
keymap("n", "<leader>sv", "<C-w>v", opts) -- split window vertically
keymap("n", "<leader>se", "<C-w>=", opts) -- make split windows equal width
keymap("n", "<leader>sx", ":close<CR>", opts) -- close current split window

---- Tabs
keymap("n", "<leader>to", ":tabnew<CR>", opts) -- open new tab
keymap("n", "<leader>tx", ":tabclose<CR>", opts) -- close current tab
keymap("n", "<leader>tn", ":tabn<CR>", opts) -- go to next tab
keymap("n", "<leader>tp", ":tabp<CR>", opts) -- go to previous tab

-- Plugin ---- 
---- Vim-maximizer
keymap("n", "<leader>m", ":MaximizerToggle<CR>", opts)

---- Harpoon
keymap("n", "<leader>hm", ":lua require(\"harpoon.mark\").add_file()<CR>", opts)
keymap("n", "<leader>hu", ":lua require(\"harpoon.ui\").toggle_quick_menu()<CR>", opts)
keymap("n", "<leader>h1", ":lua require(\"harpoon.ui\").nav_file(1)<CR>", opts)
keymap("n", "<leader>h2", ":lua require(\"harpoon.ui\").nav_file(2)<CR>", opts)
keymap("n", "<leader>h3", ":lua require(\"harpoon.ui\").nav_file(3)<CR>", opts)
keymap("n", "<leader>h4", ":lua require(\"harpoon.ui\").nav_file(4)<CR>", opts)

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

---- Delete previous word with ctrl + h or ctrl + backspace
keymap("i", "<C-H>", "<C-W>", opts)

-- Visual --
---- Move selected text up and down
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)

---- Don't yank text that was pasted over 
keymap("v", "p", '"_dP', opts)

---- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

---- When paste over something in visual mode don't copy the deleted part
keymap("v", "<keymap>p", "\"_dp", opts)

-- Visual Block
---- When paste over something in Visual block don't copy the deleted part
keymap("x", "<leader>p", "\"_dp", opts)

---- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
