#!/bin/bash

DOTFILES_DIR="$HOME/dotfiles"
CONFIG_HOME="$HOME/.config"

########
# nvim #
########
# nvim dirs
NVIM_DIR="$CONFIG_HOME/nvim"
TERIOLA_DIR="$NVIM_DIR/lua/teriola"
CORE_DIR="$TERIOLA_DIR/core"
PLUGINS_DIR="$TERIOLA_DIR/plugins"
LSP_DIR="$PLUGINS_DIR/lsp"

# Create directories
mkdir -p "$NVIM_DIR"
mkdir -p "$TERIOLA_DIR"
mkdir -p "$CORE_DIR"
mkdir -p "$PLUGINS_DIR"
mkdir -p "$LSP_DIR"

# Add all files
ln -sf "$DOTFILES_DIR/nvim/init.lua" "$NVIM_DIR"
ln -sf "$DOTFILES_DIR/nvim/lua/teriola/plugins-setup.lua" "$TERIOLA_DIR"

ln -sf "$DOTFILES_DIR/nvim/lua/teriola/core/options.lua" "$CORE_DIR"
ln -sf "$DOTFILES_DIR/nvim/lua/teriola/core/keymaps.lua" "$CORE_DIR"
ln -sf "$DOTFILES_DIR/nvim/lua/teriola/core/colorscheme.lua" "$CORE_DIR" 

ln -sf "$DOTFILES_DIR/nvim/lua/teriola/plugins/autopairs.lua" "$PLUGINS_DIR" 
ln -sf "$DOTFILES_DIR/nvim/lua/teriola/plugins/nvim-leap.lua" "$PLUGINS_DIR"
ln -sf "$DOTFILES_DIR/nvim/lua/teriola/plugins/telescope.lua" "$PLUGINS_DIR"
ln -sf "$DOTFILES_DIR/nvim/lua/teriola/plugins/comment.lua" "$PLUGINS_DIR"
ln -sf "$DOTFILES_DIR/nvim/lua/teriola/plugins/lualine.lua" "$PLUGINS_DIR"
ln -sf "$DOTFILES_DIR/nvim/lua/teriola/plugins/nvim-tree.lua" "$PLUGINS_DIR"
ln -sf "$DOTFILES_DIR/nvim/lua/teriola/plugins/treesitter.lua" "$PLUGINS_DIR"
ln -sf "$DOTFILES_DIR/nvim/lua/teriola/plugins/nvim-cmp.lua" "$PLUGINS_DIR"

ln -sf "$DOTFILES_DIR/nvim/lua/teriola/plugins/lsp/lsp.lua" "$LSP_DIR"

########
# tmux #
########
# tmux dirs
# TMUX_DIR="$CONFIG_HOME/tmux"

# mkdir -p "$TMUX_DIR"
# ln -sf "$TMUX_DIR/tmux.conf" "$CONFIG_HOME/tmux/tmux.conf"
