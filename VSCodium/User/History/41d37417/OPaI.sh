#!/bin/bash

echo "This script is built ONLY for CachyOS as some packages are only available there."
echo "Starting system update and software installation..."

# Step 1: Update the system
sudo pacman -Syu
sudo pacman -S yay

# Step 2: Install essential software
yay libreoffice-fresh kdenlive vscodium flatpak discover obs-studio plasma intellij-idea-community-edition arduino-ide

# Step 3: Install multimedia codecs
yay gst-libav gst-plugins-good gst-plugins-bad gst-plugins-ugly

# Step 4: Install gaming tools
yay gamemode lib32-gamemode mangohud lib32-mangohud steam

# Step 5: Install development and system tools
yay git curl wget base-devel

# Step 6: Install additional system utilities
yay fastfetch htop tlp tlp-rdw

# Step 7: Configure Flatpak and install Flatpak applications
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub io.freetubeapp.FreeTube io.github.shiftey.Desktop

# reboot plz
echo "Installation complete! Rebooting the system is recommended"
