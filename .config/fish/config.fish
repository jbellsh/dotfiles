# config.fish

# Environment variables
### (for fish < 3.2.0)
# set PATH /usr/lib64/ccache /usr/bin /usr/sbin /usr/local/bin /bin /usr/local/sbin /home/$USER/.local/bin /home/$USER/bin /home/$USER/.local/share/flatpak/exports/share
### (for fish >= 3.2.0)
fish_add_path /usr/sbin $HOME/.local/bin $HOME/bin $HOME/.local/share/flatpak/exports/share
set EDITOR vim
set GOBIN $GOPATH/bin
set GOPATH $HOME/Projects/go
set PKG_CONFIG_PATH /usr/lib/pkgconfig/ /usr/lib64/pkgconfig/
set USERAGENT "Mozilla/5.0 (X11; Fedora; Linux x86_64; rv 75.0) Gecko/20100101 Firefox/75.0"

# User specific aliases and functions
alias dot="git --git-dir=$HOME/.dotfiles --work-tree=$HOME/ "
alias emu_android="~/.Android/Sdk/emulator/emulator @Pixel_3a_API_30"
# alias ffmpeg="ffmpeg -hide_banner -init_hw_device vaapi=amd:/dev/dri/renderD129 -hwaccel_device auto "
alias ghci="~/.ghcup/bin/ghci -fwarn-incomplete-patterns "
alias ls="ls --color=auto --group-directories-first"
alias mail="mailx"
alias nmv="mv --no-clobber "
alias novlc="parallel vlc --no-one-instance --start-paused ::: "
alias rcp='rsync -e ssh'
alias rmlint="rmlint -o sh:rmlint.sh -o pretty:stdout -o summary:stdout "
alias rsync="rsync -P --info=progress2 -avzh"
alias safemode="fish --private"
alias sqlite="sqlite3 -header -column "
alias sxiv="sxiv -o"
alias uptime="uptime -p"
alias youtube-dl="youtube-dl --user-agent \"$USERAGENT\" "

# Update completions and functions
for SCRIPT in $HOME/.config/fish/completions/*.fish $HOME/.config/fish/functions/*.fish
    source "$SCRIPT"
end
