#!/bin/bash
# Author: Drian
# Description: Simple script to install Notesnook

app="notesnook"

# Download link
download_link="https://notesnook.com/releases/linux/notesnook_linux_x86_64.AppImage"

# install Path

install_path="/opt/notesnook/$app"

# Get .AppImage file
echo "Downloading notesnook..."
wget -O notesnook "$download_link"

# Make executable
chmod +x $app

# Move to /usr/bin/
echo "Installing notesnook in $install_path"
sudo mkdir -p /opt/"$app"
sudo mv notesnook "$install_path"

# Create symlink
echo "Creating a symlink in /usr/bin..."
sudo ln -s "$install_path" /usr/bin/"$app"

echo "Installation complete!"





