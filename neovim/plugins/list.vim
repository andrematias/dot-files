" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" List of plugins
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf.vim'
Plug 'jalvesaq/zotcite'
Plug 'morhetz/gruvbox'
Plug 'mattn/emmet-vim'
Plug 'vimwiki/vimwiki'
Plug 'projekt0n/github-nvim-theme'
Plug 'OmniSharp/omnisharp-vim'
Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'editorconfig/editorconfig-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nestorsalceda/vim-strip-trailing-whitespaces'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'dense-analysis/ale'
Plug 'airblade/vim-gitgutter'
Plug 'sheerun/vim-polyglot'
call plug#end()
