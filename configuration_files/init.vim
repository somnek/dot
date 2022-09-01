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


Plug 'preservim/nerdtree'
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
call plug#end()

" Find files using Telescope command-line sugar.
nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <C-f> <cmd>Telescope find_files<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <C-g> <cmd>Telescope live_grep<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

set encoding=UTF-8

" somnek
nnoremap <C-w> <C-w>w
command Q q
command W w
command Qw wq
command Wq qw
command Two set tabstop=2 shiftwidth=2
command X /\[x\]

"tender jellybeans happy_hacking iceberg 
"PaperColor nord onedark hybrid_material molokai orange_moon 
"angr hybrid_material afterglow deus lucius anderson sonokai
"spacecamp deep-space focuspoint dogrun
:colorscheme nord


" let g:NERDTreeDirArrowExpandable="+"
" let g:NERDTreeDirArrowCollapsible="~"

"" air-line
let g:airline_powerline_fonts = 1
"let g:airline_theme=iceberg onehalfdark sonokai tenderplus
let g:airline_theme='sonokai'


if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"" coc: allow tab to accept dropdown suggestion
inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
""
if exists("g:neovide")
	set guifont=JetBrains\ Mono
	" torpedo sonicboom pixiedust railgun
	" let g:neovide_cursor_vfx_mode='pixiedust'
	" let g:neovide_transparency=0.90
	" let g:neovide_fullscreen=v:true
	" let g:neovide_cursor_vfx_particle_density=120
	" let g:neovide_cursor_vfx_particle_speed=70
	"
	" railgun mode:
	let g:neovide_cursor_vfx_mode='railgun'
	let g:neovide_cursor_vfx_particle_phase=2.5
	let g:neovide_cursor_vfx_particle_curl=0.8
	let g:neovide_cursor_vfx_particle_density=200
	let g:neovide_cursor_vfx_particle_speed=60

	" switch splitted panes
	map <silent> <c-k> :wincmd k<CR>
	nmap <silent> <c-j> :wincmd j<CR>
	nmap <silent> <c-h> :wincmd h<CR>
	nmap <silent> <c-l> :wincmd l<CR>

	nmap <c-c> "+y
	vmap <c-c> "+y
	" nmap <c-v> "+p
	" inoremap <c-v> <c-r>+
	" cnoremap <c-v> <c-r>+
	" use <c-r> to insert original character without triggering things like auto-pairs
	inoremap <c-r> <c-v>


	" light: carbonized-light github pyte rakr
	" dark:  dogrun
	:colorscheme dogrun
endif


"" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '|'

:hi link markdownError Normal
" :set clipboard=unnamedplus

