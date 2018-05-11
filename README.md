# .dotfiles
## Cloning
	git clone --bare https://github.com/fblaese/dotfiles.git $HOME/.dotfiles
	alias config='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
	config checkout
