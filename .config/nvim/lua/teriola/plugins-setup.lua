-- Install lazy package manager if needed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 }, -- Theme
  { "maxmx03/solarized.nvim" }, -- Theme
  { "nvim-telescope/telescope.nvim", tag = "0.1.6", dependencies = { "nvim-lua/plenary.nvim" }}, -- Quick find files/text
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" }, -- Better highlighting
  { "nvim-neo-tree/neo-tree.nvim", branch = "v3.x", dependencies = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", "MunifTanjim/nui.nvim" }}, -- File explorer
  { "nvim-lualine/lualine.nvim" }, -- Status line
  { "ThePrimeagen/harpoon", dependencies = { "nvim-lua/plenary.nvim" }}, -- Navigate custom created buffers
  { "ggandor/leap.nvim" }, -- Better navigation within a file 
  { "github/copilot.vim" }, -- AI
  { "diepm/vim-rest-console" }, -- REST client (send http requests)
  { "christoomey/vim-tmux-navigator" }, -- Better navigation between tmux/nvim
  -- LSP
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  { "neovim/nvim-lspconfig" },
  { "nvim-telescope/telescope-ui-select.nvim" }, -- Display code actions in a nice window
}

require("lazy").setup(plugins, opts)
