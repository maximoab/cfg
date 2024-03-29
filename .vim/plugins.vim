" PLUGINS
call plug#begin("~/.vim/plugged")

" syntax
Plug 'sheerun/vim-polyglot'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'norcalli/nvim-colorizer.lua' 
Plug 'andymass/vim-matchup'

" Status Bar
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'
Plug 'ojroques/vim-scrollstatus'
  
" Themes
Plug 'joshdick/onedark.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'morhetz/gruvbox'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'sainnhe/sonokai'
Plug 'phanviet/vim-monokai-pro'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'ryanoasis/vim-devicons'

" Tree
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

" tmux
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

" autocomplete
"Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim' , {'branch':'release'}
Plug 'mattn/emmet-vim'

" test

" IDE
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'scrooloose/nerdcommenter'
Plug '907th/vim-auto-save'

" git
Plug 'itchyny/vim-gitbranch'

Plug 'tpope/vim-repeat'


call plug#end()


