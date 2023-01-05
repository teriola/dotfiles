local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then 
  return
end

return packer.startup(function(use)
  use("wbthomason/packer.nvim") -- packer
  use("nvim-lua/plenary.nvim") -- lua functions that many plugins use

  use 'navarasu/onedark.nvim' -- theme

  use("christoomey/vim-tmux-navigator") -- tmux & split window navigation

  use("szw/vim-maximizer") -- maximizes and restores current window

  use("tpope/vim-surround")
  use("vim-scripts/ReplaceWithRegister")

  use("numToStr/Comment.nvim") -- commenting with gc

  use("nvim-tree/nvim-tree.lua") -- file explorer

  use("kyazdani42/nvim-web-devicons") -- icons

  use("nvim-lualine/lualine.nvim") -- statusline

  if packer_bootstrap then
    require("packer").sync()
  end
end)
