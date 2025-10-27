#!/bin/bash

set -euo pipefail


SCRIPTS=(
"00-system-configs.sh"
"05-drivers.sh"
"10-greeter.sh"
"20-themes-fonts.sh"
"30-environment-configs.sh"
"40-programs.sh"
"41-program-configs.sh"
"45-extra-programs.sh"
#"46-extra-programs-configs.sh"
)


echo "========= INSTALL OVERVIEW  ========"
echo "scripts to be run:"
for script in "${SCRIPTS[@]}"; do
	SCRIPT_PATH="./scripts/$script"
	echo "$SCRIPT_PATH"
done
echo "===================================="

for script in "${SCRIPTS[@]}"; do
	SCRIPT_PATH="./scripts/$script"
	echo "running $SCRIPT_PATH..."
	echo "------------------------------------"
	bash "$SCRIPT_PATH"
	echo "------------------------------------"
done
