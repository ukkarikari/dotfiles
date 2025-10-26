#!/bin/bash

set -euo pipefail

sudo apt update && sudo apt full-upgrade -y
sudo apt install -y build-essential vim tmux curl git 

sudo apt install -y \
	xorg \
	xinit \
	x11-xserver-utils \
	xterm \
	xkbset \
	xclip \
	scrot \
	brightnessctl \
	rxvt-unicode \
	i3 \
	i3status \
	i3lock \
	xss-lock \
	dmenu \
	dusnt \
	unzip \
	zip \
	tar \
	ssh \

