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
Plug 'cpea2506/one_monokai.nvim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/nvim-treesitter-context' " sticky function context
Plug 'rmehri01/onenord.nvim', { 'branch': 'main' }
Plug 'frenzyexists/aquarium-vim', { 'branch': 'develop' }
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'preservim/nerdtree'
Plug 'tyrannicaltoucan/vim-deep-space' " theme
Plug 'EdenEast/nightfox.nvim'
Plug 'rebelot/kanagawa.nvim'
Plug 'embark-theme/vim', { 'as': 'embark', 'branch': 'main' } " theme
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

"notes:
"leader is '\'

" Telescope
nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <C-f> <cmd>Telescope find_files<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <C-g> <cmd>Telescope live_grep<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
" NERDtree
nnoremap <C-t> <cmd>NERDTreeToggle<cr>

" paste/yank from clipboard
imap <C-v> <Esc>"+p
vmap <C-v> "+y

set encoding=UTF-8

" somnek
nnoremap("<leader>p", "\"_dP") 
nnoremap <C-w> <C-w>w
command Q q
command W w
command Qw wq
command Wq qw
command Two set tabstop=2 shiftwidth=2

command X /\[x\]
" Global pasta
command Hello :put = 'hello'
" to repeat command do @:

"        tender jellybeans happy_hacking iceberg 
"        PaperColor nord onedark hybrid_material molokai orange_moon 
"        angr hybrid_material afterglow deus lucius anderson sonokai
"        spacecamp deep-space focuspoint dogrun tokyonight onenord
"        aquarium embark mountaineer kanagawa nordfox duskfox
"

" lua and shit
lua require'colorizer'.setup()
lua require("nvim-lsp-installer").setup {}
lua require'lspconfig'.rust_analyzer.setup{}
lua require'lspconfig'.gopls.setup{}
lua require'lspconfig'.golangci_lint_ls.setup{}

" for some reason this only works in neovide
nnoremap <leader>la <cmd>lua vim.lsp.buf.hover()<CR>
inoremap <c-r> <c-v>
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

:colorscheme duskfox


"" <--------- air-line ----------
let g:airline_powerline_fonts = 1
"        iceberg onehalfdark sonokai tenderplus
"        base16_aquarium_dark / light
let g:airline_theme='tenderplus'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
"" ---------- air-line ---------->

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"" coc: allow tab to accept dropdown suggestion
inoremap <silent><expr> <S-Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<S-Tab>" :
      \ coc#refresh()
""
"" <----------NEOVIDE-----------
if exists("g:neovide")
	set termguicolors
	set guifont=JetBrains\ Mono
	let g:neovide_fullscreen=v:false

	" --------------------------------------------
	" | torpedo sonicboom pixiedust railgun
	" --------------------------------------------
	" pixiedust mode
	let g:neovide_cursor_vfx_mode='pixiedust'
	let g:neovide_transparency=0.90
	let g:neovide_fullscreen=v:true
	let g:neovide_cursor_vfx_particle_density=120
	let g:neovide_cursor_vfx_particle_speed=70
	let g:neovide_cursor_vfx_particle_curl=20
	"
	" railgun mode:
	" let g:neovide_cursor_vfx_mode='railgun'
	" let g:neovide_cursor_vfx_particle_phase=2.5
	" let g:neovide_cursor_vfx_particle_curl=0.8
	" let g:neovide_cursor_vfx_particle_density=200
	" let g:neovide_cursor_vfx_particle_speed=60
	"
	" smolmode:
	" let g:neovide_cursor_vfx_mode='sonicboom'

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
	inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

	" toggle neovide fullscreen
	command NDFSF :let g:neovide_fullscreen=v:false
	command NDFST :let g:neovide_fullscreen=v:true

	let g:airline_theme='onehalfdark'
	let g:aquarium_style="dark"
	" tokyo style: day/night/storm
	let g:tokyonight_style = "night"
	colorscheme one_monokai
endif
"" -----------NEOVIDE----------->

"" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '|'

:hi link markdownError Normal
" :set clipboard=unnamedplus

