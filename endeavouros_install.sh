#!/bin/bash

#To reinstall the base components for Nvidia drivers
sudo pacman -S --noconfirm base-devel linux-headers git nano --needed

#To install Nvidia drivers
yay -S --noconfirm nvidia nvidia-utils lib32-nvidia-utils opencl-nvidia

#To remind me to edit Grub when this is done
echo "Remember to add nvidia-drm.modeset=1 to the bootloader settings in grub and use sudo grub-mkconfig -o /boot/grub/grub.cfg to update Grub"

#To reinstall all of my packages I need from pacman
sudo pacman -S --noconfirm steam wine kdenlive flatpak lutris vim neovim curl wget gimp krita inkscape qbittorrent hyprshot hyprshot-gui zenity libreoffice-still sdl2 freetype harfbuzz onnxruntime

#To reinstall all the packages I need from the AUR
yay -S --noconfirm ttf-ms-win11-auto
yay -S --noconfirm heroic-games-launcher-bin
yay -S --noconfirm telegram-desktop-bin
yay -S --noconfirm vesktop-bin
yay -S --noconfirm mullvad-vpn-bin
yay -S --noconfirm prismlauncher
yay -S --noconfirm waypaper

#To reinstall OBS-Studio from flathub plus the VK-Capture plugin to window capture specific windows with Pipewire
flatpak install --user flathub com.obsproject.Studio -y
flatpak install --user flathub com.obsproject.Studio.Plugins.OBSVkCapture -yay

#To reinstall Hyprland, credit goes to Stephan Raabe for the amazing setup and dotfiles go to his gitlab to check out his amazing work
cd ~/Downloads
git clone https://gitlab.com/stephan-raabe/hyprland-starter.git
cd hyprland-starter
./install.sh --assumeyes

cd ~/Downloads
git clone https://gitlab.com/stephan-raabe/dotfiles.git
cd dotfiles
./install.sh --assumeyes

#To reinstall NVChad with my nerd font
cd ~/Downloads/Fonts
alias vim=nvim
sudo mkdir ~/.local/share/fonts
unzip JetBrainsMono.zip -d ~/.local/share/fonts
fc-cache ~/.local/share/fonts
cd ~/
git clone https://github.com/NvChad/starter ~/.config/nvim && nvim
