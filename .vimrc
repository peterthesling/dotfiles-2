filetype plugin indent on
syntax on
set mouse=a
set ttymouse=xterm2
set hlsearch
set number
set laststatus=2
set autoread
set rtp+=/usr/local/opt/fzf
set backspace=indent,eol,start
set noswapfile

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

let mapleader = ","
let g:mapleader = ","

" Vim Test
nmap <silent> <leader>tn :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>tl :TestLast<CR>
let test#strategy = "dispatch"

call plug#begin('~/.vim/plugged')

Plug 'Shopify/shadowenv.vim'
Plug 'janko/vim-test'

Plug 'tpope/vim-fugitive'       " Git
Plug 'tpope/vim-rhubarb'        " GitHub

Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'tpope/vim-dispatch'       " Run background processes in tmux tabs
Plug 'janko/vim-test'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

