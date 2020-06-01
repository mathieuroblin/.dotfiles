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
Plug 'SirVer/ultisnips'

" POWER FEATURES
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'easymotion/vim-easymotion'

" VISUAL
Plug 'sainnhe/sonokai'
Plug 'luochen1990/rainbow'
Plug 'itchyny/lightline.vim'

" GOLANG
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': ['go'] } 

" CLOJURE
Plug 'guns/vim-sexp', {'for': ['clojure']}
Plug 'tpope/vim-sexp-mappings-for-regular-people', {'for': ['clojure']}
Plug 'tpope/vim-fireplace', {'for': ['clojure']}

" Initialize plugin system
call plug#end()
