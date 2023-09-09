nnoremap <silent> <Leader>t :tabnew<CR>

" window switching
if has('nvim')
  tnoremap <c-w><c-h> <c-\><c-n><c-w>h
  tnoremap <c-w><c-j> <c-\><c-n><c-w>j
  tnoremap <c-w><c-l> <c-\><c-n><c-w>l
  tnoremap <c-w><c-k> <c-\><c-n><c-w>k
  tnoremap <c-w><c-w> <c-\><c-n><c-w>w
  " automatically enter insert mode in terminal
  autocmd BufWinEnter,WinEnter term://* startinsert
endif

" custom pairs
nnoremap <silent> [t :tabprev<CR>
nnoremap <silent> ]t :tabnext<CR>
nnoremap <silent> ]w :ALENext<CR>
nnoremap <silent> ]W :ALELast<CR>
nnoremap <silent> [w :ALEPrevious<CR>
nnoremap <silent> [W :ALEFirst<CR>

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

