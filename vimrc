set laststatus=2
set showtabline=2

set noshowmode
set noruler
set number relativenumber
set encoding=utf-8
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
syntax on

set splitbelow
set splitright " More natural splits

set list listchars=tab:»·,trail:·,nbsp:·  " Show trailing whitespace

" More natural movement
nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <Leader>nt :tabNext<CR>
nnoremap <Leader>pt :tabprevious<CR>

let mapleader = ","

set wildmenu
set wildmode=longest:full,full

colorscheme cobalt2

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
nnoremap <leader>. :CtrlPTag<cr>

noremap <Leader>s :update<CR>
noremap <Leader>nn :relativenumber!<CR>

nnoremap <Leader>sc :set spell spelllang=en_gb<CR>
nnoremap <Leader>ns :set nospell<CR>

nnoremap <silent><expr> <Leader>h (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"

nnoremap <Space> @q

map - ddp
map _ ddkP
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

noremap <Leader>t :TagbarToggle<CR>

" CtrlP
nnoremap <silent> <leader>o :CtrlP<CR>
nnoremap <silent> <leader>t :CtrlPTag<cr>
nnoremap <silent> <leader>l :CtrlPLine<cr>
nnoremap <silent> <leader>b :TagbarToggle<CR>
nnoremap <silent> ; :CtrlPBuffer<CR>

" ctags/tagbar
nnoremap <leader>f :ta<space>

" Auto open the TagBar when file is supported
autocmd FileType * nested :call tagbar#autoopen(0)

let g:tagbar_compact = 1

let g:tagbar_type_ansible = {
    \ 'ctagstype' : 'ansible',
    \ 'kinds' : [
    \ 't:tasks',
    \ 'h:hosts'
    \ ],
    \ 'sort' : 0
    \ }

let g:tagbar_type_terraform = {
    \ 'ctagstype' : 'terraform',
    \ 'kinds' : [
    \ 'r:resources',
    \ 'm:modules',
    \ 'o:outputs',
    \ 'v:variables',
    \ 'f:tfvars'
    \ ],
    \ 'sort' : 0
    \ }

let g:tagbar_type_make = {
    \ 'kinds':[
    \ 'm:macros',
    \ 't:targets'
    \ ]
    \}

let g:tagbar_type_sh = {
    \ 'kinds':[
    \ 'f:functions',
    \ 'c:constants'
    \ ]
    \}

let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'kinds' : [
    \ 'h:Heading_L1',
    \ 'i:Heading_L2',
    \ 'k:Heading_L3'
    \ ]
    \ }

let g:easytags_async = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme= "cobalt2"

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:systastic_check_on_wq = 0

let g:syntastic_python_checkers = ['pycodestyle']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'

" Custom syntastic settings:
function s:find_eslintrc(dir)
    let l:found = globpath(a:dir, '.jshintrc')
    if filereadable(l:found)
        return l:found
    endif

    let l:parent = fnamemodify(a:dir, ':h')
    if l:parent != a:dir
        return s:find_eslintrc(l:parent)
    endif

    return "~/.eslintrc"
endfunction

function UpdateESLintConf()
    let l:dir = expand('%:p:h')
    let l:eslintrc = s:find_eslintrc(l:dir)
    let g:syntastic_javascript_eslint_args = l:eslintrc
endfunction

au BufEnter * call UpdateESLintConf()

autocmd BufNewFile,BufRead .eslintrc set ft=json

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

if &term =~ '256color'
      " Disable Background Color Erase (BCE) so that color schemes work
      " properly within 256-color terminals
      set t_ut=
endif

autocmd StdinReadPre * let s:std_in=1

function! StartUp()
   if 0 == argc()
     NERDTree
   end
endfunction

autocmd VimEnter * call StartUp()
set term=xterm-256color

set directory^=$HOME/.vim/swap//
