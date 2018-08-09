" Disable Background Color Erase (BCE) so that color schemes work
" properly within 256-color terminals
if &term =~ '256color'
      set t_ut=
endif

" Base colourscheme
colorscheme Tomorrow

" Time based colourscheme base on night-and-day
let g:nd_themes = [
  \ ['sunrise+0', 'Tomorrow', 'light'],
  \ ['sunset+0', 'Tomorrow-Night', 'dark'],
  \ ]
" Edinburgh(ish)
let g:nd_latitude = '55'
let g:nd_timeshift = '0'

"Airline Theme
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme= "tomorrow"

