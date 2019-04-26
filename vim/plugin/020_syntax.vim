" General Settings
filetype plugin indent on
syntax on
set foldenable
set foldmethod=indent
set foldlevelstart=20
set tabstop=8
set softtabstop=2
set shiftwidth=2
set expandtab

" Show trailing whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Syntastic config
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:systastic_check_on_wq = 0

let g:syntastic_python_checkers = ['pycodestyle']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'

" Custom filetype bindings
autocmd BufNewFile,BufRead .eslintrc set ft=json
