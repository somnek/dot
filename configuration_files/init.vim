:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set number
:set hidden
:set nowrap
:set scrolloff=8
:set sidescrolloff=8
:set title
:set termguicolors
:set noshowmode

call plug#begin()

Plug 'tyrannicaltoucan/vim-deep-space' " theme
Plug 'github/copilot.vim'
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/tribela/vim-transparent'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}


" Find files using Telescope command-line sugar.
nnoremap <C-f> <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

set encoding=UTF-8

call plug#end()


command Q q
command W w
command Qw wq
command Wq qw

"tender jellybeans happy_hacking iceberg 
"PaperColor nord onedark hybrid_material molokai orange_moon 
"angr hybrid_material afterglow deus lucius anderson sonokai
"spacecamp deep-space
:colorscheme deep-space

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

"" air-line
let g:airline_powerline_fonts = 1
"let g:airline_theme=iceberg onehalfdark sonokai tenderplus
let g:airline_theme='sonokai'


if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '|'

:hi link markdownError Normal
" :set clipboard=unnamedplus
"
set termguicolors
