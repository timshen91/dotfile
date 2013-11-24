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
set shiftwidth=2
set tabstop=2
set timeout
set timeoutlen=0
set ttimeout
set ttimeoutlen=0
"set expandtab
set nobk

filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after

if has("autocmd")
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

" generic C++ settings:
set mps+=<:> formatoptions=croql cindent cinoptions=:0,g0

function! GnuIndent()
  setlocal cinoptions=>4,n-2,{2,^-2,:2,=2,g0,h2,p5,t0,+2,(0,u0,w1,m1
  set comments=sr:/*,mb:*,el:*/,://
  " libstdc++ customisation
  "set noet cinoptions+=,{1s,>2s,n-1s
  setlocal shiftwidth=2
  setlocal tabstop=8
endfunction
au FileType c,cpp call GnuIndent()
