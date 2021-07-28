#!/bin/bash


# X server + drivers
sudo pacman -S xorg-server xorg-apps xorg-xinit --noconfirm --needed
# If need specific video drivers (e.g nvidia or old intel device)
#sudo pacman -S xf86-video-nouveau xf86-video-intel --noconfirm --needed
# Display manager
sudo pacman -S sddm --noconfirm --needed
sudo systemctl enable sddm.service
# graphical indicator for networkmanager (not needed for cinnamon/gnome)
#sudo pacman -S network-manager-applet --noconfirm --needed
# plasma desktop environment
sudo pacman -S plasma --noconfirm --needed
# user directories
sudo pacman -S xdg-user-dirs-gtk --noconfirm --needed
# ssh
sudo pacman -S openssh --noconfirm --needed
# printing service
sudo pacman -S cups cups-pdf system-config-printer splix --noconfirm --needed
sudo systemctl enable org.cups.cupsd.service
# to run appimage
sudo pacman -S fuse2 fuse3 --noconfirm --needed
# thunderbolt devices
#sudo pacman -S bolt --noconfirm --needed
# openvpn and networkmanage front end
#sudo pacman -S openvpn networkmanager-openvpn
# some fonts
sudo pacman -S adobe-source-sans-pro-fonts cantarell-fonts noto-fonts noto-fonts-emoji terminus-font ttf-bitstream-vera ttf-dejavu ttf-droid ttf-inconsolata ttf-liberation ttf-roboto ttf-ubuntu-font-family tamsyn-font --noconfirm --needed
# some useful applications
sudo pacman -S firefox ksystemlog ark kcolorchooser dolphin kcalc gwenview gimp audacity ktorrent vlc keepassxc libreoffice-still yakuake spectacle htop print-manager okular kwalletmanager kwrite --noconfirm --needed
# wireless driver
#sudo pacman -S broadcom-wl --noconfirm --needed
# themes
#sudo pacman -S arc-gtk-theme papirus-icon-theme --noconfirm --needed
# audio
#sudo pacman -S pulseaudio pulseaudio-alsa --noconfirm --needed
# other, (kio package remove, is it needed?)
#sudo pacman -S gconf --noconfirm --needed
# qemu & virtual-manager
#sudo pacman -S qemu libvirt ebtables dnsmasq virt-manager --noconfirm --needed
#sudo systemctl enable libvirtd.service ebtables.service dnsmasq.service
