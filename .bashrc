# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    source /etc/bashrc
fi

# Source local definitions
if [ -d ~/.local/share/completion/ ]; then
    for SCRIPT in ~/.local/share/completions/*; do
        source "$SCRIPT"
    done
fi

# Source ghc env
[ -f "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env" ] && source "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env"

# Bash prompt and variables
PS1="[\[\e[0;37m\u\e[00m\]@\h \W]\[\e[0;91m\]\$ \e[00m\]"

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias dot="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias ghci='ghci -fwarn-incomplete-patterns'
alias ls='ls --color=auto --group-directories-first'
alias rcp='rsync -e ssh'
alias rsync='rsync -P --info=progress2 -avzh'
alias uptime='uptime -p'
