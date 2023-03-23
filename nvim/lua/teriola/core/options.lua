local options = {
  number = true,                              -- Set numbered lines
  relativenumber = true,                      -- Set relative numbered lines
  tabstop = 2,                                -- Insert 2 spaces for a tab
  shiftwidth = 2,                             -- The number of spaces inserted for each indentation
  expandtab = true,                           -- Convert tabs to spaces
  autoindent = true,
  smartindent = true,                         -- Make indenting smarter again 
  wrap = false,                               -- Display lines as one long line 
  ignorecase = true,                          -- Ignore case in search patterns 
  smartcase = true,                           -- Smart case 
  termguicolors = true,                       -- Set term gui colors (most terminals support this)
  background = "dark",
  signcolumn = "yes",                         -- Always show the sign column, otherwise it would shift the text each time 
  cmdheight = 2,                              -- More space in the neovim command line for displaying messages
  cursorline = true,                          -- Highlight the current line
  backspace = "indent,eol,start",
  splitright = true,                          -- Force all vertical splits to go to the right of current window 
  splitbelow = true,                          -- Force all horizontal splits to go below current window
  clipboard = "unnamedplus",                  -- Allows neovim to access the system clipboard 
  mouse = "a",                                -- Allow the mouse to be used in neovim 
  pumheight = 10,                             -- Pop up menu height 
  swapfile = false,                           -- Creates a swapfile 
  undofile = true,                            -- Enable persistent undo 
  updatetime = 300,                           -- Faster completion (4000ms default) 
  scrolloff = 8,                              -- Minimal number of screen lines to keep above and below the cursor
  sidescrolloff = 8,                          -- Minimal number of screen columns either side of cursor if wrap is `false`
  writebackup = false,                        -- If a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  completeopt = "menu,menuone,noselect",      -- Mostly just for cmp
  backup = false,                             -- Creates a backup file
  conceallevel = 0,                           -- So that `` is visible in markdown files
  fileencoding = "utf-8",                     -- The encoding written to a file
  hlsearch = true,                            -- Highlight all matches on previous search pattern
  timeoutlen = 1000,                          -- Time to wait for a mapped sequence to complete (in milliseconds)
  numberwidth = 4,                            -- set number column width (default is 4)
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.opt.shortmess:append "c"                           -- Don't give |ins-completion-menu| messages
vim.opt.iskeyword:append "-"                           -- Hyphenated words recognized by searches
vim.opt.formatoptions:remove({ "c", "r", "o" })        -- Don't insert the current comment leader automatically for auto-wrapping comments using 'textwidth', hitting <Enter> in insert mode, or hitting 'o' or 'O' in normal mode.
vim.opt.runtimepath:remove("/usr/share/vim/vimfiles")  -- Separate vim plugins from neovim in case vim still in use
