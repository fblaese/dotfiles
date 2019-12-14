# emacs keybindings
bindkey -e
# key bindings
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[2~" ""
bindkey "^[[3~" delete-char
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word
#bindkey "e[5~" beginning-of-history
#bindkey "e[6~" end-of-history
#bindkey "e[3~" delete-char
#bindkey "e[2~" quoted-insert
#bindkey "e[5C" forward-word
#bindkey "eOc" emacs-forward-word
#bindkey "e[5D" backward-word
#bindkey "eOd" emacs-backward-word
#bindkey "ee[C" forward-word
#bindkey "ee[D" backward-word
#bindkey "^H" backward-delete-word
## for rxvt
#bindkey "e[8~" end-of-line
#bindkey "e[7~" beginning-of-line
## for non RH/Debian xterm, can't hurt for RH/DEbian xterm
#bindkey "eOH" beginning-of-line
#bindkey "eOF" end-of-line
## for freebsd console
#bindkey "e[H" beginning-of-line
#bindkey "e[F" end-of-line
## completion in the middle of a line
#bindkey '^i' expand-or-complete-prefix

export HISTFILE=~/.zsh_history
export SAVEHIST=10000


zstyle :compinstall filename '/home/fbl/.zshrc'

autoload -Uz compinit
compinit

source .zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd completion)


export EDITOR=vim

alias ls='ls --color=auto'
PS1='%B%F{green}%n@%m%f%b:%B%F{blue}%~%f%b$ '

export LESS="--RAW-CONTROL-CHARS"
[[ -f ~/.config/less/.less_rc ]] && . ~/.config/less/.less_rc

source ~/.bash_aliases
