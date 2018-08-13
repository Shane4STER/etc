let mapleader = ","

" More natural movement
nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <Leader>nt :tabNext<CR>
nnoremap <Leader>pt :tabprevious<CR>

" Quicksave
noremap <Leader>s :update<CR>

" Enable/Disable spellcheck
nnoremap <Leader>sc :set spell spelllang=en_gb<CR>
nnoremap <Leader>ns :set nospell<CR>

" Toggle hlsearch
nnoremap <silent><expr> <Leader>h (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"

" Toggle relative numbering
noremap <Leader>nn :relativenumber!<CR>

" Move line up/down
map - ddp
map _ ddkP
