# Replacements
alias ls='eza --color=always --icons=always'
alias tree='eza --color=always --icons=always --tree'
alias cat='bat'
alias cd='z'
alias find='fd'

# Shortcuts
alias wifi='impala'
alias bt='bluetui'
alias notes='vim $HOME/Notes/index.md'
alias fehbg='feh --bg-fill --no-fehbg'
alias a='aspell -a'
alias t='todo.sh'
alias tl='todo.sh ls @life'
alias abnt2='setxkbmap -model abnt2 -layout br'
alias sprite='(LibreSprite.AppImage &) && exit'

# Easy access to configuration files
alias vimrc='vim ~/.vimrc'
alias bashrc='vim ~/.bashrc'
alias config_vim='vim ~/.vimrc'
alias config_bash='vim ~/.bashrc'
alias config_alias='vim ~/.bash_aliases ; . ~/.bash_aliases'
alias config_bspwm='vim ~/.config/bspwm/bspwmrc ; bspc wm -r'
alias config_sxhkd='vim ~/.config/sxhkd/sxhkdrc ; pkill -USR1 -x sxhkd'
alias config_polybar='vim ~/.config/polybar/config.ini'
alias config_xinit='vim ~/.xinitrc'
alias config_starter='vim ~/.config/starter.sh'

# Function to let yazi exit on the directory you close it at
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}



# A; B    # Run A and then B, regardless of success of A
# A && B  # Run B if and only if A succeeded
# A || B  # Run B if and only if A failed
# A &     # Run A in background.
