" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype indent plugin on

" Turn on syntax highlighting
syntax on

" Show line numbers
set number relativenumber

" Blink cursor on error instead of beeping (grr)
set visualbell

" Whitespace
set wrap

" Makes it so that add/subtract work on decimal instead of octal"
set nrformats-=octal 

" Set tab rendering to 2 wide"
set tabstop=2
set shiftwidth=0
	
" Autocomplete like zsh (ex commands)"
set wildmenu
set wildmode=full

" Set history of commands"
set history=200

"" Always move by visible lines" Always move by visible lines"
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j

" FZF keybindings"
nnoremap <C-p> :<C-u>FZF<CR>

" Setting colorscheme"
colorscheme gruvbox 

" Activate built-in plugin"
runtime macros/matchit.vim

" Plugin Maintenence"
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

packadd minpac
call minpac#init()
call minpac#add('morhetz/gruvbox')
call minpac#add('tpope/vim-surround')
call minpac#add('junegunn/fzf')
