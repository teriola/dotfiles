-- Declare options 
local opts = { noremap = true, silent = true }

-- shorten function name with a variable
local keymap = vim.api.nvim_set_keymap

-- Map <leader> to space
vim.g.mapleader = " "

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)

-------------------------------- Normal Mode
---- Git stuff
-- vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

---- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

---- Resize windows
-- keymap("n", "<leader>>", ":vertical resize +2<CR>", opts)
-- keymap("n", "<leader><", ":vertical resize -2<CR>", opts)
-- keymap("n", "<leader>+", ":resize +2<CR>", opts)
-- keymap("n", "<leader>-", ":resize -2<CR>", opts)

-- Navigate vertically
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

---- Navigate buffers
-- keymap("n", "<leader>l", ":bnext<CR>", opts) -- Navigate to next buffer
-- keymap("n", "<leader>h", ":bprevious<CR>", opts) -- Navigate to previous buffer
keymap("n", "<leader>c", ":w|bd<CR>", opts) -- Save and close buffer
keymap("n", "<leader>x", ":bd!<CR>", opts) -- Close buffer without save
keymap("n", "<leader>w", ":w<CR>", opts) -- Save buffer

---- Clear search highlights
keymap("n", "<leader>nh", ":nohl<CR>", opts)

-- Better search exprerience
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

---- Deleting with "x" doesn't overwrite the default register 
keymap("n", "x", '"_x', opts)
--keymap("n", "dd", '"_dd', opts)

---- Move current line down or up
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==", opts)
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==", opts)

---- Stay in indent mode / doesn't work for some reason
-- keymap("n", ">", ">gv", opts)
-- keymap("n", "<", "<gv", opts)

---- Windows
-- keymap("n", "<leader>sh", "<C-w>s", opts) -- split window horizontally
-- keymap("n", "<leader>sv", "<C-w>v", opts) -- split window vertically
-- keymap("n", "<leader>se", "<C-w>=", opts) -- make split windows equal width
-- keymap("n", "<leader>sx", ":close<CR>", opts) -- close current split window

---- tabs
-- keymap("n", "<leader>to", ":tabnew<CR>", opts) -- open new tab
-- keymap("n", "<leader>tc", ":tabclose<CR>", opts) -- close current tab
-- keymap("n", "<leader>tn", ":tabn<CR>", opts) -- go to next tab
-- keymap("n", "<leader>tp", ":tabp<CR>", opts) -- go to previous tab

--------------------------------------- Insert mode
---- Exit insert mode with jj
keymap("i", "jj", "<ESC>", opts)

---- Delete previous word with ctrl + h or ctrl + backspace
keymap("i", "<C-H>", "<C-W>", opts)

---------------------------------------- Visual mode
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

---------------------------------------- Visual Block Mode
---- When paste over something in Visual block don't copy the deleted part
keymap("x", "<leader>p", "\"_dp", opts)

---- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
