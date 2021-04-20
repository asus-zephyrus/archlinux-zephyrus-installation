#!/bin/bash

sudo timedatectl set-ntp true
sudo hwclock --systohc

sudo virsh net-autostart default && sudo virsh net-start default

sudo reflector --fastest 10 --latest 10 --protocol https --protocol http --sort rate --save /etc/pacman.d/mirrorlist

sudo pacman -S --noconfirm xorg lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings xmonad xmonad-contrib xmobar dmenu nitrogen picom rofi lxappearance kitty flatpak wget ttf-dejavu ttf-liberation noto-fonts thunar materia-gtk-theme papirus-icon-theme vlc simplescreenrecorder obs-studio pacman-contrib playerctl arandr alsa-utils pulseaudio alsa-utils pulseaudio-alsa pavucontrol arc-gtk-theme arc-icon-theme obs-studio vlc dina-font tamsyn-font bdf-unifont ttf-bitstream-vera ttf-croscore ttf-dejavu ttf-droid gnu-free-fonts ttf-ibm-plex ttf-liberation ttf-linux-libertine noto-fonts font-bh-ttf ttf-roboto tex-gyre-fonts ttf-ubuntu-font-family ttf-anonymous-pro ttf-cascadia-code ttf-fantasque-sans-mono ttf-fira-mono ttf-hack ttf-fira-code ttf-inconsolata ttf-jetbrains-mono ttf-monofur adobe-source-code-pro-fonts cantarell-fonts inter-font ttf-opensans gentium-plus-font ttf-junicode adobe-source-han-sans-otc-fonts adobe-source-han-serif-otc-fonts noto-fonts-cjk noto-fonts-emoji ttf-font-awesome awesome-terminal-fonts archlinux-wallpaper

git clone https://aur.archlinux.org/paru.git
cd paru/
makepkg -si --noconfirm

#git clone https://aur.archlinux.org/polybar.git
#cd polybar/
#makepkg -si --noconfirm

git clone https://aur.archlinux.org/all-repository-fonts.git
cd all-repository-fonts/
makepkg -si --noconfirm

/bin/echo -e "\e[1;32mENABLE DISPLAY MANAGER\e[0m"
