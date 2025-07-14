#!/bin/bash

# ========== FOLDERS ==========
mkdir Download Pictures Projects Study Videos


# ========== PACMAN ==========
echo "Installing packages through pacman"

echo "Installing hardware related packages and tools"
sudo pacman -S --noconfirm acpi bluetui bluez bluez-deprecated-tools bluez-utils cpupower impala linux-firmware nmcli pipewire pipewire-audio pipewire-pulse wireplumber

echo "Installing desktop related packages and tools"
sudo pacman -S --noconfirm bspwm picom polybar sxhkd xorg

echo "Installing fonts"
sudo pacman -S --noconfirm noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra ttf-jetbrains-mono ttf-jetbrains-mono-nerd ttf-roboto-mono ttf-roboto-mono-nerd

echo "Installing tools"
sudo pacman -S --noconfirm alacritty aspell aspell-en bat btop dua-cli dunst eza fastfetch fd flameshot feh fzf git github-cli gvim libnotify maim mpv ncspot notify-osd nsxiv p7zip poppler rofi rofi-calc stow ueberzugpp w3m xdotool yazi yt-dlp zathura zathura-pdf-mupdf zoxide
echo "Installing gtk stuff"
lsudo pacman -S --noconfirm thunar tumbler xappearance-gtk4

echo "Installing programming stuff"
sudo pacman -S --noconfirm python3 python-pip



# ========== GIT ==========
echo "Downloading programs through git"

# Chrultrabook audio fix 
#echo "Downloading the chrultrabook audio fix"
#git clone https://github.com/WeirdTreeThing/chromebook-linux-audio.git
#./chromebook-linux-audio/setup-audio

# Yay
echo "Downloading yay"
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si

# VimWiki
echo "Downloading VimWiki"
git clone https://github.com/vimwiki/vimwiki.git ~/.vim/pack/plugins/start/vimwiki
vim -c 'helptags ~/.vim/pack/plugins/start/vimwiki/doc' -c quit

# Alacritty Themes
echo "Downloading alacritty themes"
mkdir -p ~/.config/alacritty/themes
git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes

# Vim gruvbox theme
echo "Downloading the vim gruvbox theme"
git clone https://github.com/morhetz/gruvbox.git ~/.vim/pack/default/start/gruvbox

# ========== YAY ==========
echo "Installing packages through yay"
yay -S blight todotxt google-chrome coolercontrol-bin

# ========== SETUP ==========
echo "Aditional setup"

# Setup 1.1.1.3 DNS
#echo "Setup 1.1.1.3 DNS"
#echo -e "nameserver 1.1.1.1\nnameserver 1.0.0.1" | sudo tee /etc/resolv.conf

# Setup case insensitive
echo "Setup case insensitive terminal"
if [ ! -a ~/.inputrc ]; then echo '$include /etc/inputrc' > ~/.inputrc; fi


# to fix trackpad: /etc/X11/xorg.conf.d/40-libinput.conf 
# Section "InputClass"
#     Identifier "libinput touchpad catchall"
#     MatchIsTouchpad "on"
#     MatchDevicePath "/dev/input/event*"
#     Driver "libinput"
#     Option "Tapping" "on"
#     Option "NaturalScrolling" "true"
#     Option "ClickMethod" "clickfinger"
# EndSection

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

# Start services
sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service

# Make my scripts executable
chmod +x $HOME/.scripts/*
chmod +x $HOME/.scripts/polybar/*

# Themes
#https://www.xfce-look.org/p/1681313
#https://www.gnome-look.org/p/1961046/
#https://www.gnome-look.org/p/1932768
#For anyone that stumbles upon this in the future. I had to copy the theme folder (in my case "Breeze") from ~/.local/share/icons/ to /usr/share/icons/. After that, edit the file /usr/share/icons/default/index.theme with the name of your theme as shown below.
