local options = {
  -- line numbers
  number = true,
  relativenumber = true,
  -- tabs & indentation
  tabstop = 2,
  shiftwidth = 2,
  expandtab = true,
  autoindent = true,
  smartindent = true,
  -- line wrapping 
  wrap = false,
  -- search settings
  ignorecase = true,
  smartcase = true,
  -- appearance
  termguicolors = true,
  background = "dark",
  signcolumn = "yes",
  cmdheight = 2,
  cursorline = true,
  -- backspace
  backspace = "indent,eol,start",
  -- split windows
  splitright = true,
  splitbelow = true,
  -- clipboard
  clipboard = "unnamedplus",
  -- word spacing
  iskeyword = '-',
  -- enable mouse for all modes
  mouse = "a",
  -- popup window height
  pumheight = 10,
  -- no swap file is created
  swapfile = false,
  -- can undo file after reboot
  undofile = true,
  -- faster completion
  updatetime = 300,
  -- leaves x lines space when scrolling
  scrolloff = 8,
  sidescrolloff = 8,

  -- others
  writebackup = false,
  completeopt = { "menuone", "noselect" },

  -- defaults
  backup = false,
  conceallevel = 0,
  fileencoding = "utf-8",
  hlsearch = true,
  timeoutlen = 1000,
  numberwidth = 4,
}

for k, v in pairs(options) do
vim.opt[k] = v
end
