set splitbelow
set splitright " More natural splits

set wildmenu
set wildmode=longest:full,full
set wildignore+=*/tmp/*,*.swp,*/node_modules/*,*/.git/*

set incsearch
set hlsearch

set completeopt=menuone,preview,noinsert
set term=xterm-256color

" Swap files in one directory
set directory^=$HOME/.vim/swap//

" Persistent undo
set undofile
set undodir=~/.vim/undo


" Source configs:

for f in split(glob('~/.vim/vimrc/*.vim'), '\n')
  exe 'source' f
endfor

