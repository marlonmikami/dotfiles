#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Load .bash_aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export EDITOR='vim'

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

# Set up zoxide
eval "$(zoxide init bash)"

#eval "$(register-python-argcomplete pipx)"

# Created by `pipx` on 2025-06-08 16:41:42
export PATH="$PATH:/home/marlon/.local/bin"
