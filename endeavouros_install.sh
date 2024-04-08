#!/bin/bash

#To reinstall the base components for Nvidia drivers and all of my packages
sudo pacman -S --noconfirm base-devel linux-headers git nano steam wine kdenlive flatpak lutris vim neovim curl wget gimp krita inkscape qbittorrent zenity libreoffice-still sdl2 harfbuzz onnxruntime

#To install Nvidia drivers
yay -S --noconfirm nvidia nvidia-utils lib32-nvidia-utils opencl-nvidia

#To reinstall all the packages I need from the AUR
yay -S --noconfirm ttf-ms-win11-auto
yay -S --noconfirm heroic-games-launcher-bin
yay -S --noconfirm telegram-desktop-bin
yay -S --noconfirm vesktop-bin
yay -S --noconfirm mullvad-vpn-bin
yay -S --noconfirm prismlauncher

#To install hyprland
cd Downloads
git clone https://gitlab.com/stephan-raabe/hyprland-starter.git
cd hyprland-starter
./install.sh

#To install dotfiles
cd Downloads
git clone https://gitlab.com/stephan-raabe/dotfiles.git
cd dotfiles
./install.sh
