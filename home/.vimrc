"***************
" VUNDLE BIDNESS
"***************
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" GO SHENANIGANS
" **************
Plugin 'fatih/vim-go'

" JAVASCRIPT SHENANIGANS
" **********************
Plugin 'pangloss/vim-javascript'

" Keep Plugin commands between vundle#begin/end.

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
"       auto-approve removal

" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

"*******************
" NORMAL VIM BIDNESS
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
