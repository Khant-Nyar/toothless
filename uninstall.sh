#!/bin/bash

# Read the list of software to uninstall from a text file
mapfile -t software < uninstall.txt

# Iterate over the list and uninstall each software
for software_name in "${software[@]}"; do
  echo "Uninstalling $software_name"
  sudo apt-get remove --purge -y "$software_name"
  sudo apt -y autoremove 
done

echo "Uninstallation complete."

