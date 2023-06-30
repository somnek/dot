let mapleader = " "

set termguicolors
set relativenumber
set autoindent 
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set number
set hidden
set nowrap
set scrolloff=8
set sidescrolloff=8
set title
set noshowmode

call plug#begin()
" Others
Plug 'github/copilot.vim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/nvim-treesitter-context' " sticky func def
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
" Lsp Support
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim', { 'do': ':MasonUpdate' }
Plug 'williamboman/mason-lspconfig.nvim'
" Autocomletion
Plug 'hrsh7th/nvim-cmp'     " Required
Plug 'hrsh7th/cmp-nvim-lsp' " Required
Plug 'L3MON4D3/LuaSnip'     " Required
Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v2.x'}
" Themes
Plug 'shaunsingh/nord.nvim'
Plug 'rmehri01/onenord.nvim', { 'branch': 'main' }
Plug 'folke/tokyonight.nvim'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" air line
let g:airline_powerline_fonts = 1 " arrow
" colorscheme
let g:airline_theme='nord'
colorscheme nord

source ~/.config/nvim/configs/neovide.vim

" key binds
nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <C-f> <cmd>Telescope find_files<cr>
nnoremap <C-g> <cmd>Telescope live_grep<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
vnoremap <leader>y "+y
nnoremap <leader>Y "+Y
nnoremap <leader>p "+p
vnoremap <leader>P "+P
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" lua & shit
lua require("mason").setup()
lua require'lspconfig'.rust_analyzer.setup{}
lua require'lspconfig'.gopls.setup{}

source ~/.config/nvim/configs/zero.lua

:hi link markdownError Normal " hide markdownError


" Notes
" catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
" colorscheme tokyonight-night tokyonight-storm tokyonight-day tokyonight-moon

" airline themes:
" https://github.com/vim-airline/vim-airline#seamless-integration

