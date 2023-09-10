" enable :Man man page viewer
runtime! ftplugin/man.vim
" jump between tags with %
runtime! macros/matchit.vim

call plug#begin()

Plug 'tpope/vim-commentary'
" Plug 'scrooloose/nerdcommenter'

" python text-objs c=class f=function d=docstring
" motions ]], ]m, ]M
Plug 'jeetsukumaran/vim-pythonsense'

" navigation with [ and ]
Plug 'tpope/vim-unimpaired'

" expand text objects with +
Plug 'terryma/vim-expand-region'

" Plug 'jiangmiao/auto-pairs'

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
  Plug 'tpope/vim-dispatch'
  if has('nvim')
    Plug 'radenling/vim-dispatch-neovim'
  endif

  " sessions
  " Plug 'xolox/vim-misc'
  " Plug 'xolox/vim-session'
  Plug 'tpope/vim-obsession'

  " git
  " :Git=status, :Git difftool, :Gdiffsplit
  " :Gread, :Gwrite, :Gedit, :Ggrep
  Plug 'tpope/vim-fugitive'

  " search
  " :Grepper, :GrepperGrep, :GrepperGit, :GrepperRg
  Plug 'mhinz/vim-grepper'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  " .env support with :Dotenv
  Plug 'tpope/vim-dotenv'

  " Plug 'tpope/vim-projectionist.git'

  " linting
  " :ALEInfo
  Plug 'w0rp/ale'
  " Plug 'vim-syntastic/syntastic'
  " Plug 'neomake/neomake'

  " testing
  Plug 'vim-test/vim-test'
  Plug 'tartansandal/vim-compiler-pytest'

  " python
  " <leader>g=goto, <leader>d=definition, <leader>s=stub
  " <leader>r=rename
  " <leader>n=show usages, K=show docs
  Plug 'davidhalter/jedi-vim'
  Plug 'alfredodeza/pytest.vim'
  Plug 'tmhedberg/SimpylFold'

  " show register popup when " typed for register put
  Plug 'junegunn/vim-peekaboo'

  " show popup for potential key commands
  " Plug 'easymotion/vim-easymotion'
  Plug 'folke/which-key.nvim'
  " Plug 'liuchengxu/vim-which-key' "original
  
  " terminal
  if has('nvim')
    " Plug 'akinsho/toggleterm.nvim'
  endif
endif

call plug#end()

