-- Automatically install Packer
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer() -- True if packer was just installed

-- Autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- Import packer safely
local status, packer = pcall(require, "packer")
if not status then
  return
end

-- Makes Packer run in a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  }
}

-- Import plugins
return packer.startup(function(use)
  -- Necessary plugins
  use("wbthomason/packer.nvim") -- Have Packer manage itself
  use("nvim-lua/plenary.nvim") -- Lua functions that many plugins use
  use("ggandor/leap.nvim") -- Fast navigation in viewable part of the screen
  use("tpope/vim-repeat") -- The above plugins depends on this one
  -- Colorschemes
  use { "catppuccin/nvim", as = "catppuccin" }
  use { "folke/tokyonight.nvim" }
  use({ 'rose-pine/neovim', as = 'rose-pine' })
  -- Window related 
  use("szw/vim-maximizer") -- Maximizes and restores current window
  -- Treesitter
  use( "nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"})
  -- Auto closing tags, brackets ...
  use("windwp/nvim-autopairs")
  use("windwp/nvim-ts-autotag")
  -- File explorer
  use("nvim-tree/nvim-tree.lua")
  -- Commenting 
  use("numToStr/Comment.nvim") -- Easier commenting out code
  -- Telescope fuzzy finding
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- Icons
  use("kyazdani42/nvim-web-devicons")
  -- Statusline
  use("nvim-lualine/lualine.nvim")
  -- Text manipulation
  use("tpope/vim-surround") -- Surrounds selected text with selected char or characters
  -- Harpoon - faster buffer navigation
  use("ThePrimeagen/harpoon")
  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {'williamboman/mason.nvim'},           -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},         -- Required
      {'hrsh7th/cmp-nvim-lsp'},     -- Required
      {'hrsh7th/cmp-buffer'},       -- Optional
      {'hrsh7th/cmp-path'},         -- Optional
      {'saadparwaiz1/cmp_luasnip'}, -- Optional
      {'hrsh7th/cmp-nvim-lua'},     -- Optional

      -- Snippets
      {'L3MON4D3/LuaSnip'},             -- Required
      {'rafamadriz/friendly-snippets'}, -- Optional
    }
  }
  -- Git stuff
  use("tpope/vim-fugitive")

  if packer_bootstrap then
    require("packer").sync()
  end
end)
