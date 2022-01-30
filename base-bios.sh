#!/bin/bash

ln -sf /usr/share/zoneinfo/Asia/Kolkata /etc/localtime
hwclock --systohc
sed -i '177s/.//' /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "KEYMAP=us" >> /etc/vconsole.conf
echo "arctechsol" >> /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 arctechsol.localdomain arctechsol" >> /etc/hosts
echo root:password | chpasswd

pacman -S --noconfirm grub efibootmgr networkmanager network-manager-applet dialog wpa_supplicant mtools dosfstools reflector base-devel linux-headers xdg-user-dirs xdg-utils bluez bluez-utils alsa-utils pulseaudio bash-completion openssh rsync reflector tlp virt-manager qemu qemu-arch-extra ovmf ebtables iptables flatpak polkit polkit-qt5 polkit-gnome

pacman -S --noconfirm xf86-video-amdgpu xf86-video-intel
# pacman -S --noconfirm nvidia nvidia-utils nvidia-settings

grub-install --target=i386-pc /dev/vda
grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable NetworkManager
systemctl enable bluetooth
#systemctl enable cups
systemctl enable sshd
#systemctl enable avahi-daemon
systemctl enable tlp
systemctl enable reflector.timer
systemctl enable fstrim.timer
#systemctl enable libvirtd

useradd -m arctech
echo arctech:sam.1234 | chpasswd
#usermod -aG libvirt arctech

echo "arctech ALL=(ALL) ALL" >> /etc/sudoers.d/arctech


/bin/echo -e "\e[1;32mDone! Type exit, umount -a and reboot.\e[0m"
