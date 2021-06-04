#!/bin/bash

#sudo timedatectl set-ntp true
#sudo hwclock --systohc

#sudo virsh net-autostart default && sudo virsh net-start default

sudo reflector --verbose --country 'India' -l 10 -p https --sort rate --save /etc/pacman.d/mirrorlist && cat /etc/pacman.d/mirrorlist

sudo pacman -S xorg lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings xmonad xmonad-contrib xmobar dmenu nitrogen rofi lxappearance konsole flatpak wget ttf-dejavu ttf-liberation noto-fonts thunar thunar-archive-plugin thunar-media-tags-plugin thunar-volman vifm bat materia-gtk-theme papirus-icon-theme vlc simplescreenrecorder obs-studio pacman-contrib playerctl arandr alsa-utils pulseaudio alsa-utils pulseaudio-alsa pavucontrol arc-gtk-theme arc-icon-theme obs-studio vlc dina-font tamsyn-font bdf-unifont ttf-bitstream-vera ttf-croscore ttf-dejavu ttf-droid gnu-free-fonts ttf-ibm-plex ttf-liberation ttf-linux-libertine noto-fonts font-bh-ttf ttf-roboto tex-gyre-fonts ttf-ubuntu-font-family ttf-anonymous-pro ttf-cascadia-code ttf-fantasque-sans-mono ttf-fira-mono ttf-hack ttf-fira-code ttf-inconsolata ttf-jetbrains-mono ttf-monofur adobe-source-code-pro-fonts cantarell-fonts inter-font ttf-opensans gentium-plus-font ttf-junicode adobe-source-han-sans-otc-fonts adobe-source-han-serif-otc-fonts noto-fonts-cjk noto-fonts-emoji ttf-font-awesome awesome-terminal-fonts archlinux-wallpaper trayer

git clone https://aur.archlinux.org/paru.git
cd paru/
makepkg -si --noconfirm

paru -S gruvbox-dark-icons-gtk gruvbox-dark-gtk gtk-theme-arc-gruvbox-git gruvbox-material-gtk-theme-git gruvbox-material-icon-theme-git gruvbox-icon-theme konsole-gruvbox neovim-gruvbox-material-git neovim-lightline-gruvbox-material-git

paru -S picom-jonaburg-git

#git clone https://aur.archlinux.org/polybar.git
#cd polybar/
#makepkg -si --noconfirm

git clone https://aur.archlinux.org/all-repository-fonts.git
cd all-repository-fonts/
makepkg -si --noconfirm

/bin/echo -e "\e[1;32mENABLE DISPLAY MANAGER\e[0m"
