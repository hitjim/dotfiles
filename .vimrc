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
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'ntpeters/vim-better-whitespace'
Plug 'Raimondi/delimitMate'
Plug 'Shougo/vimproc.vim', {'do': g:make}
"Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
"Plug 'vimwiki/vimwiki'
Plug 'cespare/vim-toml'

" LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Languages
Plug 'fatih/vim-go'
Plug 'pangloss/vim-javascript'

" Themes
Plug 'NLKNguyen/papercolor-theme'
Plug 'liuchengxu/space-vim-dark'

" Wiki
" Define $VIMWIKI_PATH in ~/.zshenv
" i.e. `export VIMWIKI_PATH=/cloud/storage/path`
" And DON'T track the .zshenv in dotfiles repo
"let g:vimwiki_list = [{'path': $VIMWIKI_PATH, 'syntax': 'markdown', 'ext': '.md'}]
"let g:vimwiki_global_ext = 0 " only use vimwiki on md files in the wiki

call plug#end()

"*******************
" NORMAL VIM THINGS
"*******************
if !exists("g:syntax_on")
	syntax enable
endif
syntax on

" Never need to edit these. If you really need them, use the terminal
set wildignore+=*.pyc,*.o,*.obj,*.svn,*.swp,*.class,*.hg,*.DS_Store,*.min.*

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
set t_Co=256

" required to use `set termguicolors`
if exists('termguicolors')
  set termguicolors
endif

" fixes glitch? in colors when using vim with tmux
set background=dark
colorscheme space-vim-dark

" File types
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd Filetype html setlocal ts=2 sw=2 expandtab

"****************
" Plugin Settings
"****************

" NERDTree
" https://github.com/preservim/nerdtree/blob/master/doc/NERDTree.txt
let NERDTreeShowHidden=1
let NERDTreeRespectWildIgnore=1
let NERDTreeChDirMode=0
let NERDTreeSortOrder=['\/$', '^main.go$', '^main_test.go$', '^[A-Z].*\.go$', '\.go$']

nmap <Leader>e :NERDTreeToggle<CR>
nmap <Leader>F :NERDTreeFind<CR>
