#!/bin/bash

sudo timedatectl set-ntp true
sudo hwclock --systohc

#sudo virsh net-autostart default && sudo virsh net-start default

sudo reflector --fastest 10 --latest 10 --protocol https --protocol http --sort rate --save /etc/pacman.d/mirrorlist

sudo pacman -S --noconfirm xorg lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings xmonad xmonad-contrib xmobar dmenu nitrogen picom rofi lxappearance kitty flatpak wget ttf-dejavu ttf-liberation noto-fonts thunar materia-gtk-theme papirus-icon-theme vlc simplescreenrecorder obs-studio

#git clone https://aur.archlinux.org/paru.git
#cd paru/
#makepkg -si --noconfirm

git clone https://aur.archlinux.org/polybar.git
cd polybar/
makepkg -si --noconfirm

#git clone https://aur.archlinux.org/all-repository-fonts.git
#cd all-repository-fonts/
#makepkg -si --noconfirm

/bin/echo -e "\e[1;32mENABLE DISPLAY MANAGER\e[0m"
