"custom pairs
nnoremap <silent> [t :tabprev<CR>
nnoremap <silent> ]t :tabnext<CR>

"fzf
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>r :Rg<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>c :Commits<CR>
nnoremap <silent> <Leader>j :Jumps<CR>
nnoremap <silent> <Leader>m :Marks<CR>
nnoremap <silent> <Leader>/ :History/<CR>
nnoremap <silent> <Leader>: :History:<CR>

"turn off last search highlights
nnoremap <silent> <esc><esc> :nohlsearch<return><esc>

"disable normal navigation
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

