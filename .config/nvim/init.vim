set number
set mouse=a
set numberwidth=1
set clipboard=unnamedplus
syntax enable
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set termguicolors
set sw=2
set relativenumber
set laststatus=2
set noshowmode
so ~/.vim/plugins.vim
so ~/.vim/plugin-config.vim
so ~/.vim/maps.vim

colorscheme gruvbox
let g:lightline.colorscheme = 'gruvbox'
let g:gurvbox_contrast_dark = "hard"
"let g:material_style = "oceanic"
"let g:gruvbox_transparent_bg=1
"let g:dracula_transparent_bg=1
"autocmd VimEnter * hi Normal ctermbg=NONE guibg=NONE
autocmd BufEnter NERD_* setlocal rnu

au BufNewFile,BufRead *.html set filetype=htmldjango
lua require'colorizer'.setup()

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter


