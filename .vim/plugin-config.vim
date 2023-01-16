" PLUGINS CONFIG
"ScrollProgress plugin config""
let g:scrollstatus_size = 12
let g:scrollstatus_symbol_track = '-'
let g:scrollstatus_symbol_bar = '|'

" HTML, JSX
let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'

" Lightlane
let g:lightline = {
      "\ 'active': {
      "\   'left': [['mode', 'paste'], [], ['gitbranch', 'relativepath', 'modified']],
      "\   'right': [['filetype', 'percent', 'lineinfo'],]
      "\ },
      "\ 'inactive': {
      "\   'left': [['inactive'], ['relativepath']],
      "\   'right': [['bufnum']]
      "\ },
      "\ 'component': {
      "\   'bufnum': '%n',
      "\   'inactive': 'inactive'
      "\ },
      \ 'component_function': {
      \   'percent': 'ScrollStatus',
      \   'gitbranch': 'gitbranch#name',
      \ },
      \ 'colorscheme': 'monokai_tasty',
      "\ 'colorscheme': 'sonokai',
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \ }
      \}

let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_infos': 'lightline#ale#infos',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }
 
let g:lightline.component_type = {
      \  'linter_checking': 'right',
      \  'linter_infos': 'right',
      \  'linter_warnings': 'warning',
      \  'linter_errors': 'error',
      \  'linter_ok': 'right',
      \ }

let g:lightline.active = {
      \ 'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
      \ 'right': [['error', 'warning', 'info', 'hint', 'fix' ], ['linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ],
      \     ['gitbranch'], [  'lineinfo' ],
      \     [ 'percent' ],
      \     [ 'filetype' ],  ] }


let g:lightline#ale#indicator_checking = "\uf110"
let g:lightline#ale#indicator_infos = "\uf129"
let g:lightline#ale#indicator_warnings = "\uf071"
let g:lightline#ale#indicator_errors = "\uf05e"
"let g:lightline#ale#indicator_ok = "\uf00c"

" NerdTree
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeMapOpenInTab='\t'
let NERDTreeShowLineNumbers=0
let NERDTreeShowBookmarks=1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1

" automatically close neovim when NERDTree is the only window left
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

"change default arrows nerdtree
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ''
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

"autocmd FileType help,nerdtree IndentLinesDisable

" add custom icons folders for closed and open in nerdtree
"let g:DevIconsDefaultFolderOpenSymbol='' " symbol for open folder (f07c)
"let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol='' " symbol for closed folder (f07b)
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

let g:indentLine_char = '▏▏'

"NerdTree Highlight syntax. Disable unmatched folder and file icons having the same color as their labels (normally green and white), if set by this plugin (it could have been set by some other plugin that you are using).
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1

" Highlight symbol under cursor on CursorHold

let $FZF_DEFAULT_OPTS='--layout=reverse'

let g:auto_save=1 " enable AutoSave on Vim startup "
let g:auto_save_silent = 1 " do not display the auto-save notification "
let g:auto_save_events = ["InsertLeave", "TextChanged", "FocusLost"]
