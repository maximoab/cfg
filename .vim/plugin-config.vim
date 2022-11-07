" PLUGINS CONFIG

"let html_no_rendering=1
"let html_my_rendering=1

" HTML, JSX
let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'

" Lightlane
let g:lightline = {
      \ 'active': {
      \   'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
      \   'right': [['filetype', 'percent', 'lineinfo'], ['gitbranch']]
      \ },
      \ 'inactive': {
      \   'left': [['inactive'], ['relativepath']],
      \   'right': [['bufnum']]
      \ },
      \ 'component': {
      \   'bufnum': '%n',
      \   'inactive': 'inactive'
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name',
      \ },
      \ 'colorscheme': 'gruvbox_material',
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \ }
      \}

" NerdTree
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeMapOpenInTab='\t'
let NERDTreeShowLineNumbers=0
let NERDTreeShowBookmarks=1

" automatically close neovim when NERDTree is the only window left
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

"change default arrows nerdtree
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ''
"let g:NERDTreeDirArrowExpandable = ''
"let g:NERDTreeDirArrowCollapsible = ''

autocmd FileType help,nerdtree IndentLinesDisable

" add custom icons folders for closed and open in nerdtree
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:DevIconsDefaultFolderOpenSymbol='' " symbol for open folder (f07c)
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol='' " symbol for closed folder (f07b)
let NERDTreeMapCustomOpen='o'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsSnippetDirectories=[$HOME.'/configs/.vim/UltiSnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<C-_>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

" Lenguaje servers
let g:coc_global_extensions = [
      \ 'coc-tsserver'
      \ ]

" tmux navigator
"let g:tmux_navigator_no_mappings=1

" coc
autocmd FileType scss setl iskeyword+=@-@
autocmd FileType css setl iskeyword+=-

" Better display for messages
set cmdheight=1

" always show signcolumns
set signcolumn=yes

" Highlight symbol under cursor on CursorHold

let $FZF_DEFAULT_OPTS='--layout=reverse'

