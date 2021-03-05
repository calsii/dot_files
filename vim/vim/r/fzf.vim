" toggle fZf
nnoremap <C-p> :<C-u>FZF<CR>
nnoremap <Leader>z :<C-u>FZF<CR>
" toggle Fzf with cusor word
nnoremap <silent><leader>f :FZF -q <C-R>=expand("<cword>")<CR><CR>

" command! FZFMru call fzf#run({
" \ 'source':  reverse(s:all_files()),
" \ 'sink':    'edit',
" \ 'options': '-m -x +s',
" \ 'down':    '40%' })

" function! s:all_files()
"   return extend(
"   \ filter(copy(v:oldfiles),
"   \        "v:val !~ 'fugitive:\\|NERD_tree\\|^/tmp/\\|.git/'"),
"   \ map(filter(range(1, bufnr('$')), 'buflisted(v:val)'), 'bufname(v:val)'))
" endfunction

" show most Recent files
nnoremap <Leader>r :FZFMru<CR>
let g:fzf_mru_no_sort = 1
let g:fzf_mru_relative = 1
