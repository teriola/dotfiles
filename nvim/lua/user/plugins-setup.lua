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
  use { "catppuccin/nvim", as = "catppuccin" } -- Colorscheme
  -- Window related 
  use("szw/vim-maximizer") -- Maximizes and restores current window
  -- Treesitter
  use({ 
    "nvim-treesitter/nvim-treesitter",
    run = function()
      require("nvim-treesitter.install").update({ with_sync = true })
    end,
  })
  -- Auto closing tags, brackets ...
  use("windwp/nvim-autopairs")
  use("windwp/nvim-ts-autotag")
  -- File explorer
  use("nvim-tree/nvim-tree.lua")
  -- Commenting 
  use("numToStr/Comment.nvim") -- Easier commenting out code
  -- Telescope fuzzy finding
  use("nvim-telescope/telescope.nvim") -- Telescope plugin itself
  -- Icons
  use("kyazdani42/nvim-web-devicons")
  -- Statusline
  use("nvim-lualine/lualine.nvim")
  -- Text manipulation
  use("tpope/vim-surround") -- Surrounds selected text with selected char or characters
  -- Autocompletion - cmp
  use("hrsh7th/nvim-cmp") -- Completion plugin
  use("hrsh7th/cmp-buffer") -- Buffer completions 
  use("hrsh7th/cmp-path") -- Path completions
  use("David-Kunz/cmp-npm") -- JSON suggestions
  use("hrsh7th/cmp-nvim-lsp") -- LSP completions 
  use({ "glepnir/lspsaga.nvim", branch = "main", requires = { {"nvim-tree/nvim-web-devicons"} } })
  use("jose-elias-alvarez/typescript.nvim")
  use("onsails/lspkind.nvim")
  -- Snippets
  use("L3MON4D3/LuaSnip") -- Snippet engine
  use("saadparwaiz1/cmp_luasnip") -- Snippet completions
  use("rafamadriz/friendly-snippets") -- A bunch of snippets to use
  -- Harpoon - faster buffer navigation
  use("ThePrimeagen/harpoon")
  -- LSP
  use("williamboman/mason.nvim")
  use("neovim/nvim-lspconfig")
  use("williamboman/mason-lspconfig.nvim")

  if packer_bootstrap then
    require("packer").sync()
  end
end)
