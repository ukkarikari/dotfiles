#!/bin/bash

set -euo pipefail

DOTFILES_DIR="$HOME/dotfiles/configs/"

mkdir -p "$HOME/.config"
mkdir -p "$HOME/.i3"

ln -sf "$DOTFILES_DIR/.i3/config" "$HOME/.i3/config"
ln -sf "$DOTFILES_DIR/.i3status.conf" "$HOME/.i3status.conf"
ln -sf "$DOTFILES_DIR/.Xresources" "$HOME/.Xresources"
ln -sf "$DOTFILES_DIR/.tmux.conf" "$HOME/.tmux.conf"

# copy problematic files that either are modified alot or can be overriden by updates
cp "$DOTFILES_DIR/.config/mimeapps.list" "$HOME/.config/mimeapps.list"
sudo cp "$DOTFILES_DIR/70-synaptics.conf" "$HOME/.config/mimeapps.list"
