" window switching
if has('nvim')
  " nnoremap <silent> <c-`> :split +terminal<CR>
  " leave terminal insert mode
  tnoremap <c-v><c-v> <c-\><c-n>
  " create new split
  tnoremap <c-w><c-s> <c-\><c-n><c-w>s
  tnoremap <c-w>s     <c-\><c-n><c-w>s
  tnoremap <c-w><c-v> <c-\><c-n><c-w>v
  tnoremap <c-w>v     <c-\><c-n><c-w>v
  " switch to different window
  tnoremap <c-w><c-w> <c-\><c-n><c-w>w
  tnoremap <c-w>w     <c-\><c-n><c-w>w
  tnoremap <c-w><c-h> <c-\><c-n><c-w>h
  tnoremap <c-w>h     <c-\><c-n><c-w>h
  tnoremap <c-w><c-j> <c-\><c-n><c-w>j
  tnoremap <c-w>j     <c-\><c-n><c-w>j
  tnoremap <c-w><c-l> <c-\><c-n><c-w>l
  tnoremap <c-w>l     <c-\><c-n><c-w>l
  tnoremap <c-w><c-k> <c-\><c-n><c-w>k
  tnoremap <c-w>k     <c-\><c-n><c-w>k
  " move window
  tnoremap <c-w>H <c-\><c-n><c-w>H
  tnoremap <c-w>J <c-\><c-n><c-w>J
  tnoremap <c-w>L <c-\><c-n><c-w>L
  tnoremap <c-w>K <c-\><c-n><c-w>K

  " automatically enter insert mode in terminal
  augroup terminal_autocommands
    autocmd!
    autocmd TermOpen,BufEnter term://* startinsert
  augroup END
endif

" window resizing
noremap <c-+> <c-w>+
noremap <c-_> <c-w>-
noremap <c-<> <c-w><
noremap <c->> <c-w>>

" misc
nnoremap <silent> <space><space> :only<CR>
nnoremap <silent> <c-space> :helpclose<CR>

" custom pairs
nnoremap <silent> [t :tabprev<CR>
nnoremap <silent> ]t :tabnext<CR>
nnoremap <silent> [T :tabfirst<CR>
nnoremap <silent> ]T :tablast<CR>
nnoremap <silent> ]w :ALENext<CR>
nnoremap <silent> ]W :ALELast<CR>
nnoremap <silent> [w :ALEPrevious<CR>
nnoremap <silent> [W :ALEFirst<CR>

" search for word under cursor
nnoremap <Leader>* :Grepper -cword -noprompt<CR>
" search for current selection
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

" fzf
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>r :Rg<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>c :Commits<CR>
nnoremap <silent> <Leader>j :Jumps<CR>
nnoremap <silent> <Leader>m :Marks<CR>
nnoremap <silent> <Leader>/ :History/<CR>
nnoremap <silent> <Leader>: :History:<CR>

" turn off last search highlights
nnoremap <silent> <esc><esc> :nohlsearch<return><esc>

" disable normal navigation
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

