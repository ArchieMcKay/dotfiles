""""""""""""" Vim Plug
set nocompatible
call plug#begin()
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'morhetz/gruvbox', {'as': 'gruvbox'}
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

""""""""""""" Mappings
" General
inoremap jk <ESC>
let mapleader = ' '
nnoremap <leader>f <cmd>Telescope find_files<CR>
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

" Colourscheme
if (has("termguicolors"))
	set termguicolors
endif
let g:gruvbox_italic=1
colorscheme gruvbox

" Visual Stuff
syntax on
set clipboard=unnamed
set number
set pumheight=10
set colorcolumn=101
set relativenumber
set nu

" Other
set noswapfile
set nobackup
set splitright
set splitbelow
