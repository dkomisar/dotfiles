call plug#begin()

Plug 'tpope/vim-commentary'
" Plug 'scrooloose/nerdcommenter'

" python text-objs c=class f=function d=docstring
" motions ]], ]m, ]M
Plug 'jeetsukumaran/vim-pythonsense'

" navigation with [ and ]
Plug 'tpope/vim-unimpaired'

"Plug 'jiangmiao/auto-pairs'

" manipulate quotes, tags, brackets, etc
" <action>s<to><from> where action: y=add, d=delete, c=change
Plug 'tpope/vim-surround'

if exists('g:vscode')
  " Plug 'asvetliakov/vim-easymotion', { 'as': 'vsc-easymotion' }
else
  " close and remove buffer w/o messing up windows: Bdelete, BWipeout
  Plug 'moll/vim-bbye'

  " status bar
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " file browser
  Plug 'scrooloose/nerdtree'

  " run async builds
  if has('nvim')
    Plug 'tpope/vim-dispatch'
  endif

  " sessions
  Plug 'xolox/vim-misc'
  Plug 'xolox/vim-session'

  " git
  Plug 'tpope/vim-fugitive'

  " search
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  " python
  Plug 'davidhalter/jedi-vim'

  " show register popup when " typed for register put
  Plug 'junegunn/vim-peekaboo'

  " show popup for potential key commands
  "Plug 'easymotion/vim-easymotion'
  Plug 'folke/which-key.nvim'
  "Plug 'liuchengxu/vim-which-key' "original
  
  " terminal
  if has('nvim')
    " Plug 'akinsho/toggleterm.nvim'
  endif
endif

call plug#end()

" turn off vim-session nagging
let g:session_autosave = 'no'
