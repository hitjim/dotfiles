" Install Plug
" ----------------------------------------------
if has('vim_starting')
  set nocompatible
endif

if has('python3')
  silent! python3 1
endif

let vimplug_exists=expand('~/.vim/autoload/plug.vim')

if !filereadable(vimplug_exists)
  if !executable("curl")
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent !\curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif

let g:make = 'gmake'
if exists('make')
  let g:make = 'make'
endif

" Required:
call plug#begin(expand('~/.vim/plugged'))

" Plugins
" ---------------------------------------------------
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'ntpeters/vim-better-whitespace'
Plug 'Raimondi/delimitMate'
Plug 'Shougo/vimproc.vim', {'do': g:make}
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'

" LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Languages
Plug 'fatih/vim-go'

" Themes
Plug 'NLKNguyen/papercolor-theme'

call plug#end()

"*******************
" NORMAL VIM THINGS
"*******************
if !exists("g:syntax_on")
	syntax enable
endif

set backspace=indent,eol,start  " more powerful backspacing

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

" Colors
" required to use `set termguicolors`
if exists('termguicolors')
  set termguicolors
endif

" fixes glitch? in colors when using vim with tmux
set background=dark
colorscheme PaperColor

" File types
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd Filetype html setlocal ts=2 sw=2 expandtab
