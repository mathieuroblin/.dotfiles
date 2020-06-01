" ----- THEME -----
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif

let g:sonokai_style = 'andromeda'
colorscheme sonokai

let g:lightline = {'colorscheme' : 'sonokai'}

"let g:rainbow_active = 1
set noshowmode " Replaced by lightline

" ----- VIM -----
let mapleader = ' ' 
let maplocalleader = ','

set ignorecase " Ignore case in search
set autoindent " Set autoindent when creating a new file
set history=50 " Set command history to 50 items
set showcmd    " Display an incomplete command in the vim window
set incsearch  " Display matches for a search pattern while you type

set number relativenumber " Add relative line numbers to the gutter

set shiftwidth=2 " Indent in normal mode is 2 spaces
set tabstop=2    " Number of space a tab is
set expandtab    " In insert mode use tabstop
set hidden       " Can move buffers with changes

set foldmethod=syntax


