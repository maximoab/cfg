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
set spelllang=en,cjk
so ~/.vim/plugins.vim
so ~/.vim/plugin-config.vim
so ~/.vim/maps.vim

"set breakindent
"set breakindentopt=shift:2,min:40,sbr
"set showbreak=\ \ \▏\ \▏\ \▏

"  relative line numbers upon entering nerdtree
"let g:NERDTreeShowLineNumbers=1
"autocmd BufEnter NERD_* setlocal rnu

" enable transparent background 
"autocmd VimEnter * hi Normal ctermbg=NONE guibg=NONE


"colorscheme onedark
"set background=dark
"let g:onedark_hide_endofbuffer=1
"let g:onedark_termcolors=256
"let g:onedark_terminal_italics=1
"let g:lightline = {
  "\ 'colorscheme': 'onedark',
  "\ }

" enable Monokai-Tasty Theme "
"let g:vim_monokai_tasty_italic = 1
"let g:vim_monokai_tasty_highlight_active_window = 1
"let g:vim_monokai_tasty_machine_tint = 1
"colorscheme vim-monokai-tasty

" Sonokai Theme
" Important!!
        if has('termguicolors')
          set termguicolors
        endif
        let g:sonokai_style = 'espresso'
        " Available values:   `'default'`, `'atlantis'`, `'andromeda'`, `'shusia'`, `'maia'`,`'espresso'`
        let g:sonokai_better_performance = 1
        let g:sonokai_enable_italic = 1
        let g:sonokai_diagnostic_virtual_text = 'colored'
        let g:sonokai_diagnostic_line_highlight = 1
        let g:sonokai_disable_terminal_colors = 1
        let g:sonokai_lightline_disable_bold = 1
        "let g:sonokai_dim_inactive_windows = 1
        colorscheme sonokai

" enable theme Tokyo Night - disable if another theme is commented"
"colorscheme tokyonight
" There are also colorschemes for the different styles
"colorscheme tokyonight-night
"colorscheme tokyonight-storm
"colorscheme tokyonight-day
"colorscheme tokyonight-moon
"let g:lightline = {'colorscheme': 'tokyonight'}

" enable theme gruvbox configuration - disable if gruvbox_material theme is active" 
"colorscheme gruvbox
"let g:lightline.colorscheme = 'gruvbox'
"let g:gurvbox_contrast_dark = "hard"
""let g:gruvbox_transparent_bg=1
""let g:dracula_transparent_bg=1

 " enable theme gruvbox-material configuration - disable if gruvbox original theme is active
 "if has('termguicolors')
          "set termguicolors
        "endif
""set background=dark
""let g:gruvbox_material_background = 'hard'
"let g:gruvbox_material_better_performance = 1

"let g:gruvbox_material_diagnostic_text_highlight = 1
"" let g:gruvbox_material_diagnostic_line_highlight = 1
"let g:gruvbox_material_diagnostic_virtual_text = "colored"
"let g:gruvbox_material_sign_column_background = 'none'

"colorscheme gruvbox-material
"let g:lightline.colorscheme = 'gruvbox_material'

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

"highlight IndentBlanklineIndent1 guibg=#1f1f1f blend=nocombine
"highlight IndentBlanklineIndent2 guibg=#1a1a1a blend=nocombine

let g:indent_blankline_char = '▏'
"let g:indent_blankline_char = '│'
