" compiler setup for poetry, requires vim-compiler-pytest
if ! exists('g:dispatch_compilers')
  let g:dispatch_compilers={}
endif

" custom command to compiler mappings
let g:dispatch_compilers['poetry run pytest']='pytest'

" unfold python on load
if exists("g:loaded_SimpylFold")
  augroup python_unfold
    autocmd!
    "autocmd FileType python normal zR
  augroup END
endif

