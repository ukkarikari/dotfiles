#!/bin/bash

set -euo pipefail

sudo apt install -y \
	# -- apps
	neovim \
	btop \
	nemo \
	inkscape \
	gimp \

	#  --- audio 
	ffmpeg \
	alsa-utils \
	pulseaudio \
	pavucontrol \
	pulsemixer \

	# --- images/video
	mpv \
	gthumb \
	obs-studio \
	kdenlive \

	# --- utilities
	gnome-disk-utility \
	qbittorrent \
	yt-dlp \
	w3m \
	pandoc \
	#network-manager-applet \
