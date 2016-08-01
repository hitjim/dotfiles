"*******************
" NORMAL VIM THINGS 
"*******************
syntax on
filetype plugin indent on

set tabstop=8
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab
set number
au BufRead,BufNewFile *.md set filetype=markdown

" Plugin 'pangloss/vim-javascript' configuration
let javascript_enable_domhtmlcss=1
