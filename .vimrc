execute pathogen#infect()

set encoding=utf-8

set tabstop=4
set shiftwidth=4
set expandtab

set cindent
set smartindent
set autoindent

set number

set hlsearch

syntax on

filetype plugin indent on

" Press space to turn off hilighting
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>


" Open NERDTree when starting vim
autocmd vimenter * NERDTree


autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | en
