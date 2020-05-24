" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" VISUAL
Plug 'ntk148v/vim-horizon'

" BASICS
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'

" GOLANG
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } 

" CLOJURE
Plug 'guns/vim-sexp', {'for': ['clojure']}
Plug 'tpope/vim-sexp-mappings-for-regular-people', {'for': ['clojure']}

" Initialize plugin system
call plug#end()

" THEME
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif
colorscheme horizon

" BASIC STUFF

" Ignore case in search
set ignorecase

" Set autoindent when creating a new file
set autoindent

" Add backup when saving a file with ~
" set backup

" Set command history to 50 items
set history=50

" Add the cursor position in the vim window
" set ruler

" Display an incomplete command in the vim window
set showcmd

" Display matches for a search pattern while you type
set incsearch

" Add relative line numbers to the gutter
set number
set relativenumber

" MAPPINGS
" Misc
" Clear search highlight
nnoremap <C-l> :noh <CR>

" Clojure
" Send current form to repl
" nnoremap csrf :silent! !tmux send-keys -t 1 '(+ 1 1)' Enter <CR>
nnoremap csrf "cyaf :silent! !tmux send-keys -t 1 '(+ 1 1)' Enter <CR>
" Change top form to rpel
nnoremap csrF :silent! !tmux send-keys -t 1 '(+ 1 1)' Enter <CR>
" Clear repl
nnoremap ccr :silent! !tmux send-keys -t 1 C-l <CR> 
