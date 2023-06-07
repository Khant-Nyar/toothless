#!/bin/bash

# Read the list of software to uninstall from a text file
mapfile -t software < software_list.txt

# Iterate over the list and uninstall each software
for software_name in "${software[@]}"; do
  echo "Uninstalling $software_name"
  sudo apt-get remove --purge -y "$software_name"
done

# Install Sublime Text, VS Code, Postman, Warp CLI, TablePlus, and LAMP stack (if desired)
# Install Fonts from GitHub
echo "Installing Fonts from GitHub"
mkdir -p ~/.fonts
cd ~/.fonts
wget https://github.com/user/repo/raw/main/font-file.ttf
fc-cache -f -v

# Install Chromium
echo "Installing Chromium"
sudo apt-get install -y chromium-browser

echo "Installation complete."



