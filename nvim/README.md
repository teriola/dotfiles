README.md# dotfiles/nvim

<a href="https://dotfyle.com/teriola/dotfiles-nvim"><img src="https://dotfyle.com/teriola/dotfiles-nvim/badges/plugins?style=flat" /></a>
<a href="https://dotfyle.com/teriola/dotfiles-nvim"><img src="https://dotfyle.com/teriola/dotfiles-nvim/badges/leaderkey?style=flat" /></a>
<a href="https://dotfyle.com/teriola/dotfiles-nvim"><img src="https://dotfyle.com/teriola/dotfiles-nvim/badges/plugin-manager?style=flat" /></a>


## Install Instructions

 > Install requires Neovim 0.9+. Always review the code before installing a configuration.

Clone the repository and install the plugins:

```sh
git clone git@github.com:teriola/dotfiles ~/.config/teriola/dotfiles
NVIM_APPNAME=teriola/dotfiles/nvim nvim --headless +"PackerSync" +qa
```

Open Neovim with this config:

```sh
NVIM_APPNAME=teriola/dotfiles/nvim nvim
```

## Plugins

### colorscheme

+ [folke/tokyonight.nvim](https://dotfyle.com/plugins/folke/tokyonight.nvim)
+ [catppuccin/nvim](https://dotfyle.com/plugins/catppuccin/nvim)
+ [rose-pine/neovim](https://dotfyle.com/plugins/rose-pine/neovim)
### comment

+ [numToStr/Comment.nvim](https://dotfyle.com/plugins/numToStr/Comment.nvim)
### completion

+ [hrsh7th/nvim-cmp](https://dotfyle.com/plugins/hrsh7th/nvim-cmp)
### editing-support

+ [windwp/nvim-autopairs](https://dotfyle.com/plugins/windwp/nvim-autopairs)
+ [windwp/nvim-ts-autotag](https://dotfyle.com/plugins/windwp/nvim-ts-autotag)
### fuzzy-finder

+ [nvim-telescope/telescope.nvim](https://dotfyle.com/plugins/nvim-telescope/telescope.nvim)
### icon

+ [kyazdani42/nvim-web-devicons](https://dotfyle.com/plugins/kyazdani42/nvim-web-devicons)
### lsp

+ [neovim/nvim-lspconfig](https://dotfyle.com/plugins/neovim/nvim-lspconfig)
### lsp-installer

+ [williamboman/mason.nvim](https://dotfyle.com/plugins/williamboman/mason.nvim)
### marks

+ [ThePrimeagen/harpoon](https://dotfyle.com/plugins/ThePrimeagen/harpoon)
### motion

+ [ggandor/leap.nvim](https://dotfyle.com/plugins/ggandor/leap.nvim)
### nvim-dev

+ [nvim-lua/plenary.nvim](https://dotfyle.com/plugins/nvim-lua/plenary.nvim)
### plugin-manager

+ [wbthomason/packer.nvim](https://dotfyle.com/plugins/wbthomason/packer.nvim)
### snippet

+ [L3MON4D3/LuaSnip](https://dotfyle.com/plugins/L3MON4D3/LuaSnip)
### statusline

+ [nvim-lualine/lualine.nvim](https://dotfyle.com/plugins/nvim-lualine/lualine.nvim)
### syntax

+ [nvim-treesitter/nvim-treesitter](https://dotfyle.com/plugins/nvim-treesitter/nvim-treesitter)
## Language Servers

+ eslint
+ html
+ lua_ls
+ tsserver
