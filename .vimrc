syntax on
set nocompatible
set ruler
set history=1024
set showcmd
set backspace=indent,eol,start
set mouse=a
set incsearch
set hlsearch
set autoindent
set shiftwidth=4
set tabstop=4
set timeout
set timeoutlen=0
set ttimeout
set ttimeoutlen=0
set nobk
if has("autocmd")
	filetype plugin indent on
	autocmd FileType * setlocal formatoptions-=r formatoptions-=o
	autocmd FileType tex set matchpairs=
	autocmd BufReadPost *
		\ if line("'\"") > 1 && line("'\"") <= line("$") |
		\   exe "normal! g`\"" |
		\ endif
endif
if has("gui_running")
    set background=light
else
    set background=dark
endif
set fencs=utf-8,default,GB18030
nnoremap <F1> <nop>
inoremap <F1> <nop>
