python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set nocompatible
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
set modifiable

colorscheme bubblegum-256-dark

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let mapleader = ','
noremap <Leader>s :update<CR>
map <space> viw
map - ddp
map _ ddkP
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

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
