#!/bin/bash

# Get the directory of this script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Install tinyproxy if not installed
if ! command -v tinyproxy >/dev/null 2>&1; then
	sudo apt update
	sudo apt upgrade -y
	sudo apt install -y tinyproxy
fi

# Run tinyproxy using the config in the same directory as this script
sudo tinyproxy -c "$SCRIPT_DIR/tinyproxy.conf" \
	&& echo "[$(pgrep tinyproxy)] tinyproxy running..."
