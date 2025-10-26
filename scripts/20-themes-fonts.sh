#!/bin/bash

DOTFILES_DIR="$HOME/dotfiles/appearance"

THEMES_DIR="$DOTFILES_DIR/themes"
ICONS_DIR="$DOTFILES_DIR/icons"
FONTS_DIR="$DOTFILES_DIR/fonts"

DST_THEMES="/usr/share/themes"
DST_ICONS="/usr/share/icons"
DST_FONTS="/usr/share/fonts"

for theme in "$THEMES_DIR"/*.zip; do
    theme_name=$(basename "$theme" .zip)
    if [ ! -d "$DST_THEMES/$theme_name" ]; then
        sudo unzip -q "$theme" -d "$DST_THEMES"
        echo "installed theme: $theme_name"
    else
        echo "$theme_name already installed. skipping..."
    fi
done


for icon in "$ICONS_DIR"/*.zip; do
    icon_name=$(basename "$icon" .zip)
    if [ ! -d "$DST_ICONS/$icon_name" ]; then
        sudo unzip -q "$icon" -d "$DST_ICONS"
        echo "installed icons: $icon_name"
    else
        echo "$theme_name already installed. skipping..."
    fi
done

for font_folder in "$FONTS_DIR"/*; do
    [ -d "$font_folder" ] || continue
    folder_name=$(basename "$font_folder")
    dest_folder="$DST_FONTS/$folder_name"
    if [ ! -d "$dest_folder" ]; then
        sudo cp -r "$font_folder" "$DST_FONTS/"
        echo "installed font: $folder_name"
    else
        echo "$folder_name already installed. skipping..."
    fi
done

sudo fc-cache -fv
