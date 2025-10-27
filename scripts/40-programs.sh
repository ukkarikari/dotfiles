#!/bin/bash

set -euo pipefail

PACKAGES=(
	# -- apps
	neovim 

	#  --- audio 
	ffmpeg 
	alsa-utils 
	pulseaudio 
	pavucontrol 
	pulsemixer

	# --- images/video
	ffmpegthumbnailer
	streamlink
	mpv
	gthumb
	obs-studio
	kdenlive
	inkscape 
	gimp

	# -- files
	nemo
	ranger
	ncdu
	trash-cli
	rsync
	qbittorrent

	# --- utilities
	pass
	autorandr
	lxappearance
	gnome-disk-utility
	yt-dlp
	w3m
	pandoc
	btop 
	inetutils-tools 
	usbutils
	gvfs-backends
	gvfs-fuse
	qalc
	ncal
	barrier
)

sudo apt install -y "${PACKAGES[@]}"

