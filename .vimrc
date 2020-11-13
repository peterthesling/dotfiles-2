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
set autowriteall
set hidden

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Smashing escape mapping
inoremap jk <Esc>
inoremap kj <Esc>

let mapleader = ","
let g:mapleader = ","

" Vim Test
nmap <silent> <leader>tn :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>tl :TestLast<CR>
let test#strategy = "dispatch"

" trigger `autoread` when files changes on disk
" https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
" https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
    autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
            \ if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == '' | checktime | endif

" Notification after file change
" https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None


inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


call plug#begin('~/.vim/plugged')

Plug 'Shopify/shadowenv.vim'
Plug 'janko/vim-test'

Plug 'tpope/vim-fugitive'       " Git
Plug 'tpope/vim-rhubarb'        " GitHub


Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'tpope/vim-dispatch'       " Run background processes in tmux tabs
Plug 'janko/vim-test'

Plug 'neoclide/coc.nvim', {'branch': 'release'} " Vim autocomplete

Plug 'ntpeters/vim-better-whitespace' " Highlight trailing whitespace


call plug#end()

