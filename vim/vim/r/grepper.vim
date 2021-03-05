function! SetupCommandAlias(input, output)
  exec 'cabbrev <expr> '.a:input
        \ .' ((getcmdtype() is# ":" && getcmdline() is# "'.a:input.'")'
        \ .'? ("'.a:output.'") : ("'.a:input.'"))'
endfunction
call SetupCommandAlias('rg', 'GrepperGrep')

let g:grepper = {}
let g:grepper.tools = ['grep', 'git', 'rg']
" Search for the current Word
nnoremap <Leader>w :Grepper -tool rg -cword -noprompt<CR>
" Search for the current selection
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

" run Grep command
nnoremap <Leader>G :Grepper -tool git<CR>
nnoremap <Leader>g :Grepper -tool rg<CR>
