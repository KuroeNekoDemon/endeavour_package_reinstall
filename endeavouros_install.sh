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

#To reinstall Hyprland, credit goes to Stephan Raabe for the amazing setup and dotfiles go to his gitlab to check out his amazing work
cd ~/Downloads
git clone https://gitlab.com/stephan-raabe/hyprland-starter.git
cd hyprland-starter
./install.sh --assumeyes

cd ~/Downloads
git clone https://gitlab.com/stephan-raabe/dotfiles.git
cd dotfiles
./install.sh --assumeyes

#To tar ProtonGE to the right directory
cd ~/Downloads
mkdir -p ~/.steam/root/compatibilitytools.d
tar -xf GE-Proton*.tar.gz -C ~/.steam/root/compatibilitytools.d

#To reinstall NVChad with my nerd font
cd ~/Downloads
alias vim=nvim
unzip JetBrainsMono.zip -d ~/.local/share/fonts
fc-cache ~/.local/share/fonts
cd ~/
git clone https://github.com/NvChad/starter ~/.config/nvim && nvim

#To remind me to edit Grub, Hyprland.conf and /etc/environment when this is done
echo "Remember to add nvidia-drm.modeset=1 to the bootloader settings in the line GRUB_CMDLINE_LINUX_DEFAULT in /etc/default/grub and use sudo grub-mkconfig -o /boot/grub/grub.cfg to update Grub"
echo "Also reboot into KDE Plasma 6 first to make sure everything worked then Hyprland"
echo "Remember to enable flathub and install OBS-Studio and OBSVKCapture from flathub"
echo "Remember to install hyprshot, hyprshot-gui and waypaper in hyprland"
echo "Add in /etc/environment as root WRL_NO_HARDWARE_CURSORS=1 to get the cursor to appear in the second monitor"
echo "Add in ~/.config/hypr/hyprland.conf exec-once=waypaper --restore and exec-once=nm-applet --indicator at the bottom, save and reboot"
echo "Once finished enjoy!"
