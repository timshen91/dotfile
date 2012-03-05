set nocompatible
set ruler
set history=1024
set showcmd
set backspace=indent,eol,start
set mouse=a
syntax on
set incsearch
set hlsearch
filetype plugin indent on
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
"set foldmethod=syntax
if has("gui_running")
    set background=light
else
    set background=dark
endif

set fencs=utf-8,GB18030,default

"nnoremap <silent> <space> :set iskeyword+=-<CR>yiw:set iskeyword-=-<CR>:let s = 'mplayer /usr/local/share/voice-mwc/'.@0.'.wav >/dev/null 2>/dev/null &'<CR>:call system(s)<CR>
