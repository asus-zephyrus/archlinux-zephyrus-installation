#!/bin/bash

sudo systemctl set-ntp true
sudo hwclock --systohc

sudo virsh net-autostart default && sudo virsh net-start default

git clone https://aur.archlinux.org/pikaur.git
cd pikaur/
makepkg -si --noconfirm

git clone https://aur.archlinux.org/yay-git.git
cd yay-git/
makepkg -si --noconfirm

git clone https://aur.archlinux.org/paru.git
cd paru/
makepkg -si --noconfirm

sudo pacman -S xorg i3 dmenu nitrogen picom rofi lxappearance lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings alacritty flatpak wget ttf-dejavu ttf-liberation noto-fonts thunar materia-gtk-theme papirus-icon-theme google-chrome

git clone https://aur.archlinux.org/all-repository-fonts.git
cd all-repository-fonts/
makepkg -si --noconfirm

sudo systemctl enable lightdm

echo "SYSTEM REBOOTING IN 5 SECONDS"
sleep 5
reboot
