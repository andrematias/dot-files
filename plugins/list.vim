" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" List of plugins
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kkga/vim-envy'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'nickspoons/vim-sharpenup'
Plug 'OmniSharp/omnisharp-vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'tpope/vim-commentary'
Plug 'editorconfig/editorconfig-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nestorsalceda/vim-strip-trailing-whitespaces'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'sheerun/vim-polyglot'
call plug#end()
