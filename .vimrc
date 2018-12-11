"" looks
syntax on
"colorscheme monokai
set wildmenu "use popup menu for autocompletion
set scrolloff=7 "minimum lines to keep when scrolling

"" search
set hlsearch "highlight search
set ignorecase
set smartcase


"" mouse
set mouse=v

"" indentaion
set autoindent "copy indent level from last line
set smartindent "auto indent body
set noexpandtab "indent using tabs
set tabstop=4 "one tab is displayed as 4 spaces
set shiftwidth=4 "indent codeblock content one tab

"" invisibles
set list
set listchars=tab:‣\ ,trail:·,precedes:<,extends:>

"" statusbar
set ruler
set number

"" commands
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"" vim-airline
set ttimeoutlen=10
