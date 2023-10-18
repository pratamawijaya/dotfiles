" location : .config/nvim/init.vim

:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin('~/.config/nvim/plugged')
" nerd tree
Plug 'https://github.com/preservim/nerdtree' " NerdTree
" status bar
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
" Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'windwp/nvim-autopairs'
Plug 'dart-lang/dart-vim-plugin'
Plug 'Yggdroot/indentLine'

set encoding=UTF-8

call plug#end()

nnoremap <C-f> :NERDTreeFocus %<CR>
nnoremap <C-n> :NERDTree %<CR> " Ctrl+n 
nnoremap <C-t> :NERDTreeToggle %<CR> " Ctrl+t toggle nerdtree

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

let g:indentLine_leadingSpaceChar='·'
let g:indentLine_leadingSpaceEnabled='1'


" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
