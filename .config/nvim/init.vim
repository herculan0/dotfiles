" Ambiente virtual python para o NeoVim
let g:python3_host_prog = expand('$HOME/.config/nvim/venv/bin/python')
" I personally just see the leader key as an extra enabler of commands. I don't know if it's fancier than that.
" I try to group my shortcuts to what their general usefulness is based on. For instance:
"     If a command modifies text in some way, I will try to map it to Ctrl
"     If a command involves doing any buffer/pane operation, I will try to map it to Leader
"     If a command involves navigation or activating plug-in functionality I'll try to map it to Meta

" I don't have much bound to Shift but it's mostly things I want to use often and needs to be faster than other key combinations, since pressing shift is easier for me. For instance I had Shift + H/L for switching between open tabs at some point.

" Instalação de Plugins com o Plug
" https://github.com/junegunn/vim-plug
call plug#begin('~/.config/nvim/plugged')
Plug 'rhysd/git-messenger.vim'
Plug 'vim-scripts/delimitMate.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'bignimbus/pop-punk.vim'
Plug 'tpope/vim-fugitive'
call plug#end()

" Remaps
let mapleader=" "
noremap <Leader>W :w !sudo tee % > /dev/null
noremap <Leader>zz :wq <cr>
" nmap <Leader>gh :diffget //3<CR>
" nmap <Leader>gu :diffget //2<CR>
" nmap <Leader>gs :G<CR>

colorscheme spacecamp
" pop-punk ANSI colors for vim terminal
let g:terminal_ansi_colors = pop_punk#AnsiColors()
" for the airline theme - note the underscore instead of the hyphen
let g:airline_theme = 'pop_punk'

" just for fun
let g:airline_section_c = '🎸 %F'
let g:airline#extensions#tabline#enabled = 1


" Iniciar deoplete (Autocomplete assíncrono) 
" Necessário instalar pynvim
" https://github.com/Shougo/deoplete.nvim
" let g:deoplete#enable_at_startup = 1

" Usar tab para navegar no deoplete
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab

" Configurações de Interface
" let g:gruvbox_contrast_dark = 'hard'
set relativenumber
set number
set cursorline

" Opções de pesquisa
set showmatch
set ignorecase
set incsearch
set smartcase
set hlsearch

" Outras opções
set undofile
set undodir=~/.config/nvim/undodir
set mouse=a
set clipboard=unnamedplus

" Save the last cursor position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
