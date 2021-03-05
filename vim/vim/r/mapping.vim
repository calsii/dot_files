imap jj <Esc>
imap <C-b> <Left>
imap <C-f> <Right>
imap kk <C-o>

" window navigating
nnoremap <M-h> <c-w>h
nnoremap <M-j> <c-w>j
nnoremap <M-k> <c-w>k
nnoremap <M-l> <c-w>l

" save file
nnoremap <Leader>s :w<CR>
" run external shell Command
noremap <Leader>c :!
" no search highlight
nnoremap <Leader>n :set nohlsearch
" type :e %% to edit files under current directory
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
" toggle Tagbar
nnoremap <Leader>t :TagbarToggle<CR>
" Quit other windows
nnoremap <Leader>q :on<CR>

noremap <Leader>n nzz
noremap <Leader>N Nzz

noremap / /\v
noremap ? ?\v
" Find forward
noremap <space> /\v
" Find backward
noremap <C-space> ?\v

" simple Format file

" switch behaviour of moving between lines
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j

if has('nvim')
  tnoremap <M-h> <c-\><c-n><c-w>h
  tnoremap <M-j> <c-\><c-n><c-w>j
  tnoremap <M-k> <c-\><c-n><c-w>k
  tnoremap <M-l> <c-\><c-n><c-w>l
  tnoremap <Esc> <C-\><C-n>
  tnoremap <C-v><Esc> <Esc>
  highlight! link TermCursor Cursor
  highlight! TermCursorNC guibg=red guifg=white ctermbg=1 ctermfg=15
endif

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext<cr>

" Let 'tt' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tt :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()
