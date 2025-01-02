"my basic vanilla vim configuration but i would suggest to use a nvim destro
"instead "
set nocompatible              " Use modern Vim features
set number                    " Show line numbers
set tabstop=4                 " Number of spaces per tab
set shiftwidth=4              " Indentation size
set expandtab                 " Use spaces instead of tabs
set autoindent                " Auto-indent new lines
set cursorline                " Highlight the current line
set clipboard=unnamedplus     " Use system clipboard
set mouse=a                   " Enable mouse support
colorscheme slate


nnoremap <C-t> :terminal<CR>

call plug#begin('~/.vim/plugged')
" Floating Terminal
Plug 'voldikss/vim-floaterm'
" File Navigation
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
" File Icons in file tree
Plug 'ryanoasis/vim-devicons'
" Auto complete 
Plug 'jiangmiao/auto-pairs'
" Code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Use Tab for navigating completion menus in coc.nvim
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use Enter to confirm completion
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" Linting
Plug 'dense-analysis/ale'
" Syntax highlighting and indentation
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Virtual environment
Plug 'jmcantrell/vim-virtualenv'

" Formatter
Plug 'psf/black', { 'branch': 'stable' }


call plug#end()

" Key mapping to toggle the terminal
let g:floaterm_keymap_toggle = '<C-t>'
nnoremap <C-n> :NERDTreeToggle<CR>
" Terminal window size and appearance
let g:floaterm_width = 0.8
let g:floaterm_height = 0.8
let g:floaterm_title = 'Terminal'
"
" Use fzf for file search on

" Minimal layout settings
let g:fzf_layout = { 'down': '~40%' }  " Open fzf in a split window
" Set up fzf to use ripgrep if available
if executable('rg')
    let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
endif

" Optional: Add more fzf mappings for convenience
nnoremap <C-f> :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>r :Rg<CR>
