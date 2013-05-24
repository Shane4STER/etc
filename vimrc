" Fix backspace
set bs=2

" Rebind <Leader> key
let mapleader = ","

" remove highlight of prev search
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" Quicksave
noremap <C-Z> :update<CR>
vnoremap <C-Z> :update<CR>
inoremap <C-Z> :update<CR>

noremap <Leader>e :quit<CR> "Quit  current window
noremap <Leader>E :qa!<CR> " Quit all windows

"Set color scheme
set t_Co=254
color molokai

" Bind C-<mvmt key> to move around the windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Change tab movement
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" Map sort function
vnoremap <Leader>s :sort<CR>

" Better indentation
vnoremap < <gv
vnoremap > >gv

"Syntax highlighting
filetype off
filetype plugin indent on
syntax on


set number "Line numbers on
set tw=79  "width of focument
set nowrap "dont wrap text
set fo-=t  "dont wrap while typing
set colorcolumn=80
highlight ColorColumn ctermbg=233

" Text reformatting
vmap Q gq
nmap Q gqap

set history=700
set undolevels=700

" Replace tabs with spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

"Make searches case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

"Disable backups/swapfiles
set nobackup
set nowritebackup
set noswapfile

set laststatus=2 
set rtp+=/home/shane/.powerline/powerline/bindings/vim
call pathogen#infect()

