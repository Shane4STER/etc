" Config
let NERDTreeShowHidden=1

let g:easytags_async = 1

autocmd StdinReadPre * let s:std_in=1

function! StartUp()
   if 0 == argc()
     NERDTree
   end
endfunction

autocmd VimEnter * call StartUp()

" Bindings
map <silent> <C-n> :NERDTreeToggle<CR>
