" Disable Background Color Erase (BCE) so that color schemes work
" properly within 256-color terminals
if &term =~ '256color'
      set t_ut=
endif

" Base colourscheme
colorscheme colorful256

"Airline Theme
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme= "tomorrow"

