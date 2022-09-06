""""""""""""" Vim Plug
set nocompatible
call plug#begin()
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'morhetz/gruvbox', {'as': 'gruvbox'}
	Plug 'junegunn/fzf', {'do': {-> fzf#install()}}
	Plug 'junegunn/fzf.vim'
call plug#end()

" General
inoremap jk <ESC>
let mapleader = ' '
nnoremap <leader>f <cmd>Files<CR>
set mouse=a

" Indentation
filetype indent plugin on
set autoindent
set smartindent
set tabstop=4 softtabstop=4
set shiftwidth=4
set noexpandtab

" Search
set ignorecase
set smartcase
set incsearch
set nohlsearch

" Visual Stuff
syntax on
set clipboard=unnamed
set number
set pumheight=10
set colorcolumn=101
set relativenumber
set nu

" Colourscheme
let g:gruvbox_italic=1
colorscheme gruvbox

" Other
set noswapfile
set nobackup
set splitright
set splitbelow

" fzf.vim 
let g:fzf_layout = {'window': {'width': 0.9, 'height': 0.9}}
let $BAT_THEME="gruvbox-dark"
let $FZF_DEFAULT_COMMAND="rg --files"
let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --preview 'bat --color=always --style=header,grid --line-range :300 {}'"
