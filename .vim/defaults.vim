"tabs
set tabstop=2
set shiftwidth=0
set softtabstop=2
set expandtab

"don't close unsaved buffers
set hidden

"line numbers
set number
set relativenumber

"highlight search
set hlsearch
"incremental search
set incsearch
"ignore case for all lowercase search
set ignorecase smartcase

"set clipboard=unnamed
"X windows primary/clipboard
"set clipboard=unnamedplus

"for netrw
"not needed after vim 8
set nocompatible
filetype plugin indent on

" use ripgrep for :grep
set grepprg=rg\ --vimgrep\ --smart-case\ --follow

" slow down mouse scrolling
set mousescroll=ver:1,hor:6

