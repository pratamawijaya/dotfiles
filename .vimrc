set nocompatible              " be iMproved, required
filetype off                  " required

" Remap key
noremap d h
noremap h j
noremap t k
noremap n l
inoremap hh <Esc>

set number        " Show line numbers
syntax enable     " Use syntax highlighting
set ruler laststatus=2 number title hlsearch
set showmode
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
set backspace=indent,eol,start
set backspace=2
set background=dark
let g:solarized_termcolors = 256
