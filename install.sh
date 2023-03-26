#!/bin/bash

########
# nvim #
########
# Define paths
CONFIG_DIR="$HOME/.config/nvim"
TERIOLA_DIR="$CONFIG_DIR/lua/teriola"
CORE_DIR="$TERIOLA_DIR/core"
PLUGINS_DIR="$TERIOLA_DIR/plugins"
LSP_DIR="$PLUGINS_DIR/lsp"

DOTFILES_DIR="$HOME/dotfiles/nvim"

# Create directories
mkdir -p "$CONFIG_DIR"
mkdir -p "$TERIOLA_DIR"
mkdir -p "$CORE_DIR"
mkdir -p "$PLUGINS_DIR"
mkdir -p "$LSP_DIR"

# Add all files
ln -sf "$DOTFILES_DIR/init.lua" "$CONFIG_DIR" 
ln -sf "$DOTFILES_DIR/lua/teriola/plugins-setup.lua" "$TERIOLA_DIR"

ln -sf "$DOTFILES_DIR/lua/teriola/core/options.lua" "$CORE_DIR"
ln -sf "$DOTFILES_DIR/lua/teriola/core/keymaps.lua" "$CORE_DIR"
ln -sf "$DOTFILES_DIR/lua/teriola/core/colorscheme.lua" "$CORE_DIR" 

ln -sf "$DOTFILES_DIR/lua/teriola/plugins/autopairs.lua" "$PLUGINS_DIR" 
ln -sf "$DOTFILES_DIR/lua/teriola/plugins/nvim-leap.lua" "$PLUGINS_DIR"
ln -sf "$DOTFILES_DIR/lua/teriola/plugins/telescope.lua" "$PLUGINS_DIR"
ln -sf "$DOTFILES_DIR/lua/teriola/plugins/comment.lua" "$PLUGINS_DIR"
ln -sf "$DOTFILES_DIR/lua/teriola/plugins/lualine.lua" "$PLUGINS_DIR"
ln -sf "$DOTFILES_DIR/lua/teriola/plugins/nvim-tree.lua" "$PLUGINS_DIR"
ln -sf "$DOTFILES_DIR/lua/teriola/plugins/treesitter.lua" "$PLUGINS_DIR"
ln -sf "$DOTFILES_DIR/lua/teriola/plugins/nvim-cmp.lua" "$PLUGINS_DIR"

ln -sf "$DOTFILES_DIR/lua/teriola/plugins/lsp/lsp.lua" "$LSP_DIR"
