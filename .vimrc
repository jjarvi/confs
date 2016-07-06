syntax on
filetype plugin indent on

call plug#begin('~/.vim/plug')
Plug 'jjarvi/vim-airline'
Plug 'jjarvi/vim-airline-themes'
call plug#end()

set encoding=utf-8
set nocompatible
set number
set ruler
set tabstop=4
set shiftwidth=4
set expandtab
set cindent
set smartindent
set autoindent
set smarttab
" Ignore case in searches
set ignorecase
" Searches for lowercase words match any case, mixed turns on case sensitivity
set smartcase
set hlsearch
" Press space to turn off hilighting
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
" Hide buffers instead of closing. Allows having unwritten changes when
" changing buffers
set hidden
set nobackup
set nowritebackup
set noswapfile
set nocscopetag
set tags=./tags;/
set wildmenu
set wildmode=longest:list,full

map <silent> <C-j> :bprevious<CR>
map <silent> <C-k> :bnext<CR>
map <silent> <F3> <C-]>
map <C-n> :NERDTreeToggle<CR>
map <C-m> :NERDTreeFind<CR>


function! HilightWhitespace()
    highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
    match ExtraWhitespace /\s\+$\|
        \ \+\ze\t/
endfunction


let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" Always show statusline
set laststatus=2


