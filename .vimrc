filetype plugin indent on
syntax on
set mouse=a
set number
set laststatus=2
set autoread
set rtp+=/usr/local/opt/fzf
set backspace=indent,eol,start
set noswapfile

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

call plug#begin('~/.vim/plugged')

Plug 'Shopify/shadowenv.vim'
Plug 'janko/vim-test'

Plug 'tpope/vim-fugitive'       " Git
Plug 'tpope/vim-rhubarb'        " GitHub

Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#end()

