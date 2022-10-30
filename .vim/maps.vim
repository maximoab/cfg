let mapleader=" "

let g:user_emmet_leader_key=','

" testing
nnoremap <Leader>t :TestNearest<CR>
nnoremap <Leader>T :TestFile<CR>
nnoremap <Leader>TT :TestSuite<CR>

" split resize
nnoremap <Leader>> 10<C-w>
nnoremap <Leader>< 10<C-w>

"quick semi
nnoremap <Leader>< $a;<Esc>

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nnoremap <Leader>Q :q!<CR>

" shorter commands
cnoreabbrev tree NERDTreeToggle
cnoreabbrev blame Gblame
cnoreabbrev find NERDTreeFind
cnoreabbrev diff Gdiff

"Plugs
nmap <Leader>t :NERDTreeFind<CR>
map <Leader>p :Files<CR>
map <Leader>ag :Ag<CR>

" tmux navigator
nnoremap <silent> <Leader><C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <Leader><C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <Leader><C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <Leader><C-l> :TmuxNavigateRight<cr>

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap surround to lowercase s so it does not add an empty space
xmap s <Plug>VSurround

" diagnostics
nnoremap <Leader>kp :let @+ =expand("%")<CR>

" tabs navigation
map <Leader>h :tabprevious<cr>
map <Leader>l :tabnext<cr>

" buffers
map <Leader>ob :Buffers<cr>

" keeping it centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap <Leader>k :m .-2<CR>==
nnoremap <Leader>j :m .+1<CR>==

" faster scrolling
nnoremap <C-e> 10<C-e>
nnoremap <C-y> 10<C-y>
nmap <Leader>s <Plug>(easymotion-s2)

" git

" run current file
nnoremap <Leader>x :!node %<cr>

"coc config
" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"



set splitright
function! OpenTerminal()
  "move to right most buffer
  execute "normal \<C-1>"
  execute "normal \<C-1>"
  execute "normal \<C-1>"
  execute "normal \<C-1>"

  let bufNum = bufnr("%")
  let bufType = getbufvar(bufNum, "&buftype", "not found")

  if bufType == "terminal"
    "close existing terminal
    execute "q"
  else
    "open terminal
    execute "vsp term://zsh"
    
    "turn off numbers
    execute "set nonu"
    execute "set nornu"
    
    "toggle insert on enter/exit
    silent au BufLeave <buffer> stopinsert!
    silent au BufWinEnter,WinEnter <buffer> startinsert!

    "set maps inside terminal buffer
    execute "tnoremap <buffer> <C-h> <C-\\><C-n><C-w><C-h>"
    execute "tnoremap <buffer> <C-t> <C\\><C-n>:q<CR>"
    execute "tnoremap <buffer> <C-\\><C-\\ <C-\\><C-n>"

    startinsert!
  endif
endfunction
nnoremap <C-t> :call OpenTerminal()<CR>
