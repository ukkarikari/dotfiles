#!/bin/bash

set -euo pipefail


sudo apt install -y lightdm lightdm-gtk-greeter
sudo systemctl enable lightdm
