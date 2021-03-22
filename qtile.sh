#!/bin/bash

sudo timedatectl set-ntp true
sudo hwclock --systohc

#sudo virsh net-autostart default && sudo virsh net-start default

git clone https://aur.archlinux.org/pikaur.git
cd pikaur/
makepkg -si --noconfirm

#git clone https://aur.archlinux.org/yay-git.git
#cd yay-git/
#makepkg -si --noconfirm

#git clone https://aur.archlinux.org/paru.git
#cd paru/
#makepkg -si --noconfirm

sudo pacman -S --noconfirm xorg lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings qtile dmenu nitrogen picom rofi lxappearance alacritty flatpak wget ttf-dejavu ttf-liberation noto-fonts thunar materia-gtk-theme papirus-icon-theme vlc simplescreenrecorder kdenlive

#git clone https://aur.archlinux.org/all-repository-fonts.git
#cd all-repository-fonts/
#makepkg -si --noconfirm

sudo systemctl enable lightdm

/bin/echo -e "\e[1;32mDone! SYSTEM REBOOTS IN 5 SECONDS \e[0m"
sleep 5
reboot
