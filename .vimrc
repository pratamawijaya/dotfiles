set nocompatible 
set hlsearch 
noremap t l
:nnoremap b h " remap h to b for dvorak
:nnoremap m l " remap l to m for dvorak
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
