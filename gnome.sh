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

sudo pacman -S xorg gdm gnome gnome-extra figlet packagekit flatpak wget gnome-tweak-tools gnome-shell-extensions chrome-gnome-shell

git clone https://aur.archlinux.org/all-repository-fonts.git
cd all-repository-fonts/
makepkg -si --noconfirm

sudo systemctl enable gdm

/bin/echo -e "\e[1;32mDone! SYSTEM REBOOTS IN 5 SECONDS \e[0m"
sleep 5
reboot
