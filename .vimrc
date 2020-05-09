" NORMAL VIM THINGS 
"*******************
syntax on
filetype plugin indent on

" File operations
set autowrite " save on :make - most useful with vim-go :GoBuild

" Numbers
:set number relativenumber

:augroup numbertoggle
:	 autocmd!
:  autocmd BufEnter,focusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter		* set norelativenumber
:augroup END

" Whitespace
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab

" Word wrap and line length
set wrap linebreak nolist 
set breakindent breakindentopt=shift:12,min:40,sbr

set cc=100
hi ColorColumn ctermbg=blue guibg=lightgrey

" File types
au BufRead,BufNewFile *.md set filetype=markdown
