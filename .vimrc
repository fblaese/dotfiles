"" looks
syntax on

set background=dark
let g:gruvbox_italic='1'
"let g:gruvbox_number_column='bg1'
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

set cursorline

"let g:indentLine_char = '|'

"" behaviour
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
highlight SpecialKey ctermfg=darkgrey

"" statusbar
set ruler
set number relativenumber

"" intelligent line numbering
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

"" show conceald text when entering insert mode
let g:indentLine_setConceal = 0
set concealcursor=nc
set conceallevel=2

"" commands
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"" vim-airline
set ttimeoutlen=10

"" vim-gitgutter
set updatetime=100
