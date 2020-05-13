# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/.bash_aliases

# ls color
alias ls='ls --color=auto'

# prompt
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\\$\[$(tput sgr0)\] '

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
. /usr/share/fzf/key-bindings.bash
. /usr/share/fzf/completion.bash
