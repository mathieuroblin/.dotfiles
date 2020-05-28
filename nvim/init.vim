" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" BASICS
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" VISUAL
Plug 'sainnhe/sonokai'
Plug 'luochen1990/rainbow'
Plug 'itchyny/lightline.vim'

" GOLANG
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } 

" CLOJURE
Plug 'guns/vim-sexp', {'for': ['clojure']}
Plug 'tpope/vim-sexp-mappings-for-regular-people', {'for': ['clojure']}

" Initialize plugin system
call plug#end()

" ------------------
" ----- CONFIG -----
" ------------------

" ----- THEME -----
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif

let g:sonokai_style = 'andromeda'
colorscheme sonokai

let g:rainbow_active = 1
set noshowmode " Replaced by lightline

" ----- VIM -----
let mapleader = ' ' 

set ignorecase " Ignore case in search
set autoindent " Set autoindent when creating a new file
set history=50 " Set command history to 50 items
set showcmd    " Display an incomplete command in the vim window
set incsearch  " Display matches for a search pattern while you type

set number relativenumber " Add relative line numbers to the gutter

set shiftwidth=2 " Indent in normal mode is 2 spaces
set tabstop=2    " Number of space a tab is
set expandtab    " In insert mode use tabstop

" --------------------
" ----- NERDTREE -----
" --------------------
let g:NERDTreeQuitOnOpen = 1
nnoremap <Leader>n :NERDTreeToggle<Cr>

" ----------------------
" ----- LSP CONFIG -----
" ----------------------
	
if filereadable(glob('~/Desktop/tooling/clj-kondo'))
	au User lsp_setup call lsp#register_server({
  \   'name': 'kondo-lsp',
	\   'cmd': {server_info->[&shell, &shellcmdflag, 'java -jar ~/Desktop/tooling/clj-kondo']},
	\   'root_uri': {server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'deps.edn'))},
  \   'whitelist': ['clojure'],
  \ })
endif

" -------------------
" ----- MAPPING -----
" -------------------

" Misc
" Clear search highlight
nnoremap <C-l> :noh <CR>

" Clojure
" Send current form to repl
nnoremap csrf "cyaf :silent! !tmux send-keys -t 1 '(+ 1 1)' Enter <CR>
" Change top form to rpel
nnoremap csrF :silent! !tmux send-keys -t 1 '(+ 1 1)' Enter <CR>
" Clear repl
nnoremap ccr :silent! !tmux send-keys -t 1 C-l <CR> 
