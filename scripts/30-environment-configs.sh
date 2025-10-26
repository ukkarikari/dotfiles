#!/bin/bash

set -euo pipefail

DOTFILES_DIR="$PWD/../configs/"

mkdir -p "$HOME/.config"
mkdir -p "$HOME/.i3"

ln -sf "$DOTFILES_DIR/.i3/config" "$HOME/.i3"
ln -sf "$DOTFILES_DIR/.Xresources" "$HOME/.Xresources"
