alias config='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

if [[ "$OSTYPE" == "linux-gnu" ]]; then
	function open() {
		if [[ $# < 1 ]]; then
			echo "Too few arguments" >&2
		else
			xdg-open "$@" 2>/dev/null >/dev/null &
		fi
	}
fi

# presentation stuff
alias pvim='vim -c "colorscheme morning"'
