#!/bin/bash

set -euo pipefail

sudo apt install -y \
	xserver-xorg-video-intel \
	firmware-iwlwifi \
	xserver-xorg-input-synaptics \
	tlp \
	tlp-rdw \


sudo systemctl start tlp
sudo modprobe -r iwlwifi && sudo modprobe iwlwifi
