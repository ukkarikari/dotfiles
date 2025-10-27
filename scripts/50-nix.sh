#!/bin/bash

set -euo pipefail

DOTFILES_DIR="$HOME/dotfiles/configs/"

# prob good idea to update this periodically
#sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install) --daemon

#mkdir $HOME/.config/nix/
#ln -sf "$DOTFILES_DIR/.config/nix/nix.conf" "$HOME/.config/nix/nix.conf"

nix profile add nixpkgs#legcord
nix profile add github:ukkarikari/kimnikixvim
