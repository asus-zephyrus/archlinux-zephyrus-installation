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

sudo pacman -S xorg sddm plasma-meta plasma-nm figlet terminator dolphin packagekit packagekit-qt5 discover flatpak kate ark wget

git clone https://aur.archlinux.org/all-repository-fonts.git
cd all-repository-fonts/
makepkg -si --noconfirm

sudo systemctl enable sddm

echo "SYSTEM REBOOTING IN 5 SECONDS"
sleep 5
reboot
