#!/bin/bash

# Define color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${RED}This script is built ONLY for CachyOS as some packages are only available there.${NC}"
echo -e "${GREEN}Starting system update and software installation...${NC}"

# Step 1: Update the system
sudo pacman -Syu
sudo pacman -S --needed yay

# Step 2: Install all required software packages in one chonky command
yay -S --needed \
  libreoffice-fresh kdenlive vscodium flatpak discover obs-studio plasma intellij-idea-community-edition arduino-ide \
  gst-libav gst-plugins-good gst-plugins-bad gst-plugins-ugly \
  gamemode lib32-gamemode mangohud lib32-mangohud steam \
  git curl wget base-devel \
  fastfetch btop tlp tlp-rdw

# Step 3: Configure Flatpak and install Flatpak applications
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub io.freetubeapp.FreeTube io.github.shiftey.Desktop

# Prompt for reboot
echo -e "${RED}Installation complete!${NC} ${GREEN}Rebooting the system is recommended.${NC}"
