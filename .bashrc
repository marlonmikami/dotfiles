#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# Load .bash_aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export EDITOR='vim'
export PATH=$PATH:$HOME/.scripts

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

# Set up zoxide
eval "$(zoxide init bash)"

#eval "$(register-python-argcomplete pipx)"

export PATH="$PATH:/home/marlon/.local/bin"
