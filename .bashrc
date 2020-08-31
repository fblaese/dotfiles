# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# load aliases
source ~/.bash_aliases

# ls color
if [[ "$OSTYPE" == "darwin"* ]]; then
	export CLICOLOR=1
	export LSCOLORS=ExFxCxDxBxegedabagacad
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
	alias ls='ls --color=auto'
fi

# prompt
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\\$\[$(tput sgr0)\] '

# default editor
export EDITOR=vim

# remove pgup/pgdown annoyance
bind -r "[5~"
bind -r "[6~"

# Get color support for 'less'
export LESS="--RAW-CONTROL-CHARS"
# Use colors for less, man, etc.
[[ -f ~/.config/less/.less_rc ]] && . ~/.config/less/.less_rc

# Use system libvirtd as default for virsh
export LIBVIRT_DEFAULT_URI="qemu:///system"

# fuzzy match with fzf
if [[ "$OSTYPE" == "darwin"* ]]; then
	. /usr/local/Cellar/fzf/0.21.1/shell/key-bindings.bash
	. /usr/local/Cellar/fzf/0.21.1/shell/completion.bash
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
	. /usr/share/fzf/key-bindings.bash
	. /usr/share/fzf/completion.bash
fi

# macos bash completion
if [[ "$OSTYPE" == "darwin"* ]]; then
	[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
fi

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth
HISTSIZE=10000

# Disable per-terminal-session command history
export SHELL_SESSION_HISTORY=0
