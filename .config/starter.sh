sudo pacman -S bluetui bluez bluez-utils bluez-deprecated-tools stow git github-cli ranger nnn btop vim w3m picom feh alacritty fastfetch rofi alsa pulseaudio polybar ttf-roboto-mono ttf-roboto-mono-nerd gucharmap acpi bspwm sxhkd xorg

# yay -S blight

# === Chrultrabook audio fix ===
# git clone https://github.com/WeirdTreeThing/chromebook-linux-audio.git
# cd chromebook-linux-audio
# ./setup-audio


# xev to show the keys being pressed
# to fix trackpad: /etc/X11/xorg.conf.d/40-libinput.conf 


# gh auth login


# If ~/.inputrc doesn't exist yet: First include the original /etc/inputrc
# so it won't get overriden
# if [ ! -a ~/.inputrc ]; then echo '$include /etc/inputrc' > ~/.inputrc; fi

# Add shell-option to ~/.inputrc to enable case-insensitive tab completion
# echo 'set completion-ignore-case On' >> ~/.inputrc


# sudo systemctl enable bluetooth
