#!/bin/bash

# Prompt the user for the hostname
read -p "Enter the desired hostname: " hostname

ln -sf /usr/share/zoneinfo/America/Los_Angeles /etc/localtime
hwclock --systohc
sed -i '178s/.//' /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "$hostname" >> /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 $hostname.localdomain $hostname" >> /etc/hosts
echo root:password | chpasswd

# Install yay from the AUR
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..

# Install zramd from the AUR using yay
yay -S zramd

# You can add xorg to the installation packages, I usually add it at the DE or WM install script
# You can remove the tlp package if you are installing on a desktop or vm

# System manager
pacman -S grub efibootmgr base-devel os-prober linux-headers bash-completion terminus-font neofetch rsync grsync reflector acpi acpi_call acpid tlp virt-manager qemu qemu-arch-extra edk2-ovmf bridge-utils sddm xorg-xrandr bison

# Terminal emulators and text editors
pacman -S kitty alacrity kate neovim emacs powerline

# Image processing
pacman -S imagemagick graphicsmagick

# Networking utils
pacman -S networkmanager network-manager-applet dialog wpa_supplicant mtools dosfstools avahi dnsmasq xdg-user-dirs xdg-utils gvfs gvfs-smb nfs-utils inetutils nss nss-mdns dnsutils bluez bluez-utils cups hplip alsa-utils openssh openvpn networkmanager-openvpn nmap openbsd-netcat iptables-nft ipset firewalld flatpak

# Security utils
pacman -S lynis rkhunter apparmor arch-audit arch-audit-gtk cargo-audit exploitdb openldap sssd

# Audio
pacman -S pipewire pipewire-alsa pipewire-pulse pipewire-jack audacity audacity-docs             sof-firmware

# Integrated Development Environments (IDE)
# pacman -S codeblocks gnome-builder kdevelop liteide netbeans qtcreator intellij-idea-community-edition pycharm-community-edition kturtle scratch

# Debuggers
pacman -S kdbug

# Programming
pacman -S r julia

# Python
# Uncomment these for additional python packages as needed
# NOTE: Not all are python libraries and could be packages written in python
# Python WSGI Server
# pacman -S python-waitress
# Graphical BitTorrent client
# deluge-gtk
# Pastebin Service
# pacman -S pastebinit
# Graphical XMPP Client
# pacman -S gajim
# Static Site Generators
# pacman -S nikola pelican
# Graphical Image Viewer
# pacman -S vimiv
# Graphical Audio Player
# pacman -S quodlibet
# Audio Synthesis Environment
# pacman -S foxdot
# Video Converters
# pacman -S transmageddon
# Graphical Debugger
# pacman -S accerciser
#
# pacman -S
#
# pacman -S
pacman -S python python-pandas python-matplotlib python-astropy python-cairosvg


# Math
pacman -S sagemath kig geogebra kalgebra

# Scientific
pacman -S gnome-weather kcalc speedcrunch

# Geographic Information Systems (GIS)
pacman -S bt747 gpsd josm marble merkaartor qmapshack qgis

# Uncomment if using amd or nvidia gpu
# pacman -S  xf86-video-amdgpu
# pacman -S  nvidia nvidia-utils nvidia-settings

grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB #change the directory to /boot/efi if EFI partition is mounted at /boot/efi

grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable NetworkManager.service
# systemctl enable dnsmasq.service    # Can be checked with journalctl -u dnsmasq.service
systemctl enable zramd.service
systemctl enable bluetooth.service
systemctl enable cups.service
systemctl enable sshd.service
systemctl enable sssd.service
systemctl enable avahi-daemon.service
systemctl enable reflector.timer # Updates the mirror list weekly
systemctl enable fstrim.timer
systemctl enable libvirtd.service
systemctl enable firewalld.service
systemctl enable acpid.service

# change user to desired username & password to something more secure
useradd -m user
echo user:password | chpasswd
usermod -aG libvirt user

echo "user ALL=(ALL) ALL" >> /etc/sudoers.d/user


printf "\e[1;32mDone! Type exit, umount -a and reboot.\e[0m"
