let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_enter = 0
let g:ale_lint_on_filetype_changed = 0
" For JavaScript files, use `eslint` (and only eslint)
let g:ale_linters = {'javascript': ['eslint']}
let g:ale_linters = {'rust': ['analyzer']}
" Mappings in the style of unimpaired-next
nmap <silent> [F <Plug>(ale_first)
nmap <silent> [f <Plug>(ale_previous)
nmap <silent> ]f <Plug>(ale_next)
nmap <silent> ]F <Plug>(ale_last)

let g:airline#extensions#ale#enabled = 1

let g:ale_completion_enabled = 1
set signcolumn=yes
set wildmode=longest:full,full
set wildmenu
set omnifunc=ale#completion#OmniFunc
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
let g:ale_completion_autoimport = 1

let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_open_list = 1
let g:ale_list_window_size = 1
