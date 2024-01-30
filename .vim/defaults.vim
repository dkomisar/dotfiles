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
autocmd BufEnter,TermOpen term://* setlocal nonumber | setlocal norelativenumber

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

" turn off vim-session nagging
let g:session_autosave = 'no'

" vim-airline tabline which only comes on when no tabs are open
let g:airline#extensions#tabline#enabled = 1

" vim-test setting to display test errors in quickfix
let test#strategy = "dispatch"

" setup neovim-remote to be used for VISUAL
if has("nvim") && executable("nvr")
  let $VISUAL="nvr -cc split --remote-wait +'set bufhidden=wipe'"
endif

" turn on ALE completion
let g:ale_completion_enabled = 1

