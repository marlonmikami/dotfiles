#!/bin/bash

# ========== PACMAN ==========
echo "Installing packages through pacman"

echo "Installing hardware related packages and tools"
sudo pacman -S --noconfirm  bluetui bluez bluez-utils bluez-deprecated-tools alsa pipewire pipewire-audio pipewire-pulse wireplumber acpi impala 

echo "Installing desktop related packages and tools"
sudo pacman -S --noconfirm xorg picom bspwm sxhkd polybar 

echo "Installing fonts"
sudo pacman -S --noconfirm ttf-roboto-mono ttf-roboto-mono-nerd noto-fonts 

echo "Installing tools"
sudo pacman -S --noconfirm yazi eza p7zip ueberzugpp poppler bat dua-cli git github-cli fzf ncspot stow btop gvim alacritty rofi feh w3m fastfetch aspell aspell-en zathura zathura-pdf-poppler yt-dlp maim libnotify notify-osd dunst fd zoxide 

echo "Installing programming stuff"
sudo pacman -S --noconfirm python3 python-pip


# ========== YAY ==========
echo "Installing packages through yay"
yay -S blight todotxt google-chrome

# ========== GIT ==========
echo "Downloading programs through git"

# Chrultrabook audio fix 
echo "Downloading the chrultrabook audio fix"
git clone https://github.com/WeirdTreeThing/chromebook-linux-audio.git
./chromebook-linux-audio/setup-audio

# VimWiki:
echo "Downloading VimWiki"
git clone https://github.com/vimwiki/vimwiki.git ~/.vim/pack/plugins/start/vimwiki
vim -c 'helptags ~/.vim/pack/plugins/start/vimwiki/doc' -c quit


# ========== SETUP ==========
echo "Aditional setup"

# Setup 1.1.1.3 DNS
echo "Setup 1.1.1.3 DNS"
echo -e "nameserver 1.1.1.1\nnameserver 1.0.0.1" | sudo tee /etc/resolv.conf

# Setup case insensitive
echo "Setup case insensitive terminal"
if [ ! -a ~/.inputrc ]; then echo '$include /etc/inputrc' > ~/.inputrc; fi


# to fix trackpad: /etc/X11/xorg.conf.d/40-libinput.conf 

# To setup auto login
#/etc/systemd/system/getty@tty1.service.d/autologin.conf
#[Service]
#ExecStart=
#ExecStart=-/sbin/agetty -o '-p -f -- \\u' --noclear --autologin <username> %I $TERM

# Auto mount USB drive
# sudo blkid /dev/sda1 | awk -F'"' '{print $6}'
# sudo mount -U D25A-9DB8 /media/usb-drive/
# add to /etc/fstab
# UUID=D25A-9DB8 /media/usb-drive/ auto rw,user,exec,umask=000 0 0

# Change power key behavior
sudo bash -c "echo \"HandlePowerKey=ignore\" >> /etc/systemd/logind.conf"
