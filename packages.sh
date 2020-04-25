#!/bin/bash


# X server + drivers
sudo pacman -S xorg-server xorg-apps xorg-xinit --noconfirm --needed
# If need specific video drivers (e.g nvidia or old intel device)
#sudo pacman -S xf86-video-nouveau xf86-video-intel --noconfirm --needed
# Display manager with gtk frontend and enable in systemd
sudo pacman -S lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings --noconfirm --needed
sudo systemctl enable lightdm.service
# graphical indicator for networkmanager (not needed for cinnamon/gnome)
sudo pacman -S network-manager-applet --noconfirm --needed
# cinnamon desktop environment
#sudo pacman -S cinnamon gnome-terminal evince gedit eog nemo-fileroller gnome-screenshot gnome-calculator --noconfirm --needed
# xfce desktop environment
#sudo pacman -S xfce4 xfce4-goodies file-roller evince --noconfirm --needed
# mate desktop environment
sudo pacman -S mate mate-extra --noconfirm --needed
# user directories, keyring, nightlight (basically all that is already built into gnome, comment out for gnome)
sudo pacman -S xdg-user-dirs-gtk gnome-keyring redshift --noconfirm --needed
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
sudo pacman -S openvpn networkmanager-openvpn
# some fonts
sudo pacman -S adobe-source-sans-pro-fonts cantarell-fonts noto-fonts noto-fonts-emoji terminus-font ttf-bitstream-vera ttf-dejavu ttf-droid ttf-inconsolata ttf-liberation ttf-roboto ttf-ubuntu-font-family tamsyn-font --noconfirm --needed
# some useful applications
sudo pacman -S firefox gimp audacity transmission-gtk vlc keepassxc libreoffice-still htop --noconfirm --needed
# wireless driver
#sudo pacman -S broadcom-wl --noconfirm --needed
# themes
sudo pacman -S arc-gtk-theme papirus-icon-theme --noconfirm --needed
# audio
sudo pacman -S pulseaudio pulseaudio-alsa --noconfirm --needed
# other, (kio package remove, is it needed?)
#sudo pacman -S gconf --noconfirm --needed
# qemu & virtual-manager
#sudo pacman -S qemu libvirt ebtables dnsmasq virt-manager --noconfirm --needed
#sudo systemctl enable libvirtd.service ebtables.service dnsmasq.service
