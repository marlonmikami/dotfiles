sudo pacman -S terminus-font gucharmap 

# System
bluetui bluez bluez-utils bluez-deprecated-tools   # Bluetooth
alsa pulseaudio                                    # Audio
acpi 

# Desktop
xorg picom 
bspwm sxhkd polybar 

# Fonts
ttf-roboto-mono ttf-roboto-mono-nerd               # Default fonts
ttf-arphic-ukai ttf-arphic-uming ttf-sazanami      # Fonts for other languages

# Tools
yazi eza 7zip ueberzugpp poppler                   # File manager + tools
git github-cli                                     # Git + tools
fzf                                                # Fuzzy finder
tree                                               # Display directory as tree
ncspot                                             # Spotify tui client 
stow                                               # Tool for managing dotfiles 
btop                                               # Resource monitor
vim                                                # Text editor
alacritty                                          # Terminal emulator
rofi                                               # Application Launcher 
feh                                                # Image viewer 
w3m                                                # Terminal web browser
fastfetch                                          # Fetch

# Programming languages
python3  


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


# vimwiki:
# git clone https://github.com/vimwiki/vimwiki.git ~/.vim/pack/plugins/start/vimwiki
# vim -c 'helptags ~/.vim/pack/plugins/start/vimwiki/doc' -c quit

# Edit /etc/vconsole.conf and add FONT=ter-132b



# To Try: fish zellij gitui du-dust dua yazi wiki-tui zoxide eza
