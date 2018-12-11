alias config='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

if [[ "$OSTYPE" == "linux-gnu" ]]; then
	function open() {
		sh -c "xdg-open "${@-.}" & >/dev/null 2>&1"
	}
fi

# presentation stuff
alias pvim='vim -c "colorscheme morning"'
