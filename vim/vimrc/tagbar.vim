" Config

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

" Bindings

noremap <silent> <Leader>t :TagbarToggle<CR>
