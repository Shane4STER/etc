" Dasht related config and bindings

" Config

" Results displayed in rightside panel
let g:dasht_results_window = 'botright vnew'

" Bindings

" Search docsets
nnoremap <Leader>k :Dasht<Space>
nnoremap <Leader><Leader>k :Dasht!<Space>

" Search word under cursor
nnoremap <silent> <Leader>K :call Dasht([expand('<cword>'), expand('<cWORD>')])<Return>
nnoremap <silent> <Leader><Leader>K :call Dasht([expand('<cword>'), expand('<cWORD>')], '!')<Return>

" Search for selected text
vnoremap <silent> <Leader>K y:<C-U>call Dasht(getreg(0))<Return>
vnoremap <silent> <Leader><Leader>K y:<C-U>call Dasht(getreg(0), '!')<Return>
