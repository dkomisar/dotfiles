call plug#begin()
  Plug 'tpope/vim-commentary'
  Plug 'jeetsukumaran/vim-pythonsense'

  if exists('g:vscode')
    " VSCode extension
    "Plug 'asvetliakov/vim-easymotion', { 'as': 'vsc-easymotion' }
  else
    " ordinary Neovim
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'scrooloose/nerdcommenter'
    Plug 'scrooloose/nerdtree'
    Plug 'tpope/vim-dispatch'
    Plug 'junegunn/vim-peekaboo'
    Plug 'xolox/vim-misc'
    Plug 'xolox/vim-session'
    let g:session_autosave = 'no'
    Plug 'tpope/vim-fugitive'

    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    nnoremap <silent> <Leader>f :Files<CR>
    nnoremap <silent> <Leader>r :Rg<CR>
    nnoremap <silent> <Leader>b :Buffers<CR>
    nnoremap <silent> <Leader>c :Commits<CR>
    nnoremap <silent> <Leader>j :Jumps<CR>
    nnoremap <silent> <Leader>m :Marks<CR>
    nnoremap <silent> <Leader>/ :History/<CR>
    nnoremap <silent> <Leader>: :History:<CR>

    " use ripgrep for :grep
    set grepprg=rg\ --vimgrep\ --smart-case\ --follow

    "Plug 'jiangmiao/auto-pairs'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-unimpaired'

    Plug 'davidhalter/jedi-vim'

    "Plug 'easymotion/vim-easymotion'
    Plug 'folke/which-key.nvim'
    "Plug 'liuchengxu/vim-which-key' "original
  endif
call plug#end()

