" opções gerais
" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

let NERDTreeShowHidden=1
let $PYTHONPATH='/home/herculano/.local/lib/python3.8/site-packages'
set laststatus=2
set t_Co=256
syn on

set undofile 
set undodir=~/.vim/undodir

let g:powerline_pycmd="py"
set autoread
set backupdir=~/.cache/vim
set history=3000
set foldmethod=manual

" plugins

au BufRead,BufNewFile *.py set expandtab
au BufRead,BufNewFile *.c set expandtab
au BufRead,BufNewFile *.h set expandtab
au BufRead,BufNewFile Makefile* set noexpandtab


" opções de identação 
set smartindent
set autoindent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

set backspace=indent,eol,start

" opções de pesquisa
set showmatch
set ignorecase
set incsearch
set smartcase
set hlsearch
" opções de interface
set wildmenu
set number
set relativenumber
set ruler
set showcmd
set clipboard=unnamedplus

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

NeoBundle 'mattn/emmet-vim'
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'leshill/vim-json'
NeoBundle 'vim-python/python-syntax'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'valloric/youcompleteme'
NeoBundle 'powerline/powerline'
NeoBundle 'chrisbra/vim-commentary'
NeoBundle 'nvie/vim-flake8'
NeoBundle 'junegunn/fzf.vim'
NeoBundle 'morhetz/gruvbox'

autocmd BufWritePost *.py call Flake8()


call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck


" that are mines
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
set background=dark
set cursorline
set mouse=a

source ~/.vim/autoload/autoclose.vim

autocmd InsertEnter * highlight CursorLine guibg=#000050 guifg=fg
autocmd InsertLeave * highlight CursorLine guibg=#004000 guifg=fg
