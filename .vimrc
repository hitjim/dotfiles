"*******************
""" NORMAL VIM THINGS 
"*******************
syntax on
filetype plugin indent on

set number

set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab

set wrap linebreak nolist 
set breakindent breakindentopt=shift:12,min:40,sbr

set cc=100
hi ColorColumn ctermbg=blue guibg=lightgrey

au BufRead,BufNewFile *.md set filetype=markdown
