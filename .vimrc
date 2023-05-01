"tabs
set tabstop=2
set shiftwidth=2
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

set clipboard=unnamed
"X windows primary/clipboard
set clipboard=unnamedplus

"for netrw
set nocompatible
filetype plugin indent on

"turn off last search highlights
nnoremap <esc><esc> :nohlsearch<return><esc>

"setup vim-plug
"https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


