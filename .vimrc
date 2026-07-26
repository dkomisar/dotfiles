"download vim-plug if missing
if empty(glob("~/.vim/autoload/plug.vim"))
  silent! execute '!curl --create-dirs -fsSLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * silent! PlugInstall
endif

"setup plugins
silent! if plug#begin()
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-unimpaired'
  Plug '~/.vim/xonsh'
  call plug#end()
endif

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

"history length
set history=1000

"tab completion
set wildmenu
set wildmode=full

