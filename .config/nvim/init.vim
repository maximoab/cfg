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
set laststatus=3
set noshowmode
so ~/.vim/plugins.vim
so ~/.vim/plugin-config.vim
so ~/.vim/maps.vim

"  relative line numbers upon entering nerdtree
"let g:NERDTreeShowLineNumbers=1
"autocmd BufEnter NERD_* setlocal rnu

" enable transparent background 
"autocmd VimEnter * hi Normal ctermbg=NONE guibg=NONE

" enable theme gruvbox configuration - disable if gruvbox_material theme is active" 
"colorscheme gruvbox
"let g:lightline.colorscheme = 'gruvbox'
"let g:gurvbox_contrast_dark = "hard"
"let g:lightline.colorscheme = 'gruvbox'
""let g:gruvbox_transparent_bg=1
""let g:dracula_transparent_bg=1

 " enable theme gruvbox-material configuration - disable if gruvbox original theme is active
 if has('termguicolors')
          set termguicolors
        endif
"set background=dark
"let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_better_performance = 1

let g:gruvbox_material_diagnostic_text_highlight = 1
" let g:gruvbox_material_diagnostic_line_highlight = 1
let g:gruvbox_material_diagnostic_virtual_text = "colored"
let g:gruvbox_material_sign_column_background = 'none'

colorscheme gruvbox-material
let g:lightline.colorscheme = 'gruvbox_material'

"au bufnewfile,bufread *.html set filetype=htmldjango

" colorizer-lua. This will create an autocmd for FileType * to highlight every filetype. NOTE: You should add this line after/below where your plugins are setup.
lua require'colorizer'.setup()

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"tabline of bufferline
"set showtabline=2
"set guioptions-=e
