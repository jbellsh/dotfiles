# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=/usr/lib64/ccache:/usr/bin:/usr/sbin:/usr/local/bin:/bin:/usr/local/sbin:$HOME/.local/bin:$HOME/bin:$HOME/.local/share/flatpak/exports/share
export PATH
export EDITOR=vim
export GOPATH=$HOME/Projects/go
export GOBIN=$GOPATH/bin
