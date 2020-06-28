" Ambiente virtual python para o NeoVim
let g:python3_host_prog = '$HOME/.config/nvim/venv/bin/python'

" Instalação de Plugins com o Plug
" https://github.com/junegunn/vim-plug

call plug#begin('~/.config/nvim/plugged')

Plug 'deoplete-plugins/deoplete-jedi'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

call plug#end()

" Iniciar deoplete (Autocomplete assíncrono) 
" Necessário instalar pynvim
" https://github.com/Shougo/deoplete.nvim
let g:deoplete#enable_at_startup = 1

" Usar tab para navegar no deoplete
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Configurações de Interface
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
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
