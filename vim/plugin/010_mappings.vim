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
" Clear last search
noremap <silent> <Leader>c :set hlsearch!<CR>

" Toggle relative numbering
noremap <Leader>nn :relativenumber!<CR>

" Move line up/down
map - ddp
map _ ddkP

" For when you forget to open vim with sudo
cnoremap sudow w !sudo tee % >/dev/null

" vimdiff mergetool bindings
nnoremap <Leader>gl :diffget LOCAL<CR>
nnoremap <Leader>gb :diffget BASE<CR>
nnoremap <Leader>gr :diffget REMOTE<CR>
