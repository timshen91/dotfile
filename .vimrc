filetype plugin indent on
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
set expandtab
set smarttab
set timeout
set timeoutlen=0
set ttimeout
set ttimeoutlen=0
set nobk
set title
nnoremap <F1> <nop>
autocmd FileType * setlocal formatoptions-=r formatoptions-=o
if has("gui_running")
    set background=light
else
    set background=dark
endif
set fencs=utf-8,GB18030,default

nnoremap <F1> <nop>
inoremap <F1> <nop>
