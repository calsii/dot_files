packadd minpac
call minpac#init()

call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-sensible')
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-surround')
  let b:surround_indent = 1
call minpac#add('tpope/vim-vinegar')
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-endwise')

call minpac#add('luochen1990/rainbow')
  let g:rainbow_active = 1
call minpac#add('morhetz/gruvbox')
call minpac#add('ekalinin/Dockerfile.vim')
call minpac#add('ap/vim-css-color')
call minpac#add('kaicataldo/material.vim')
call minpac#add('airblade/vim-gitgutter')
  set updatetime=100
  let g:gitgutter_max_signs = -1
  function! GitStatus()
    let [a,m,r] = GitGutterGetHunkSummary()
    return printf('+%d ~%d -%d', a, m, r)
  endfunction
  set statusline+=%{GitStatus()}
call minpac#add('preservim/nerdtree')
call minpac#add('mattn/emmet-vim')
call minpac#add('rust-lang/rust.vim')
  let g:rustfmt_autosave = 1
call minpac#add('machakann/vim-highlightedyank')
call minpac#add('mattn/webapi-vim')
call minpac#add('leafOfTree/vim-vue-plugin')
  let g:vim_vue_plugin_load_full_syntax = 1
call minpac#add('majutsushi/tagbar')
call minpac#add('Yggdroot/indentLine')
call minpac#add('cohama/lexima.vim')
call minpac#add('jwalton512/vim-blade')
call minpac#add('ParamagicDev/vim-medic_chalk')
call minpac#add('nanotech/jellybeans.vim')
call minpac#add('Shougo/deoplete.nvim')
  let g:deoplete#enable_at_startup = 1
call minpac#add('pbogut/fzf-mru.vim')
call minpac#add('dense-analysis/ale')
call minpac#add('vim-airline/vim-airline')
call minpac#add('mhinz/vim-grepper')
call minpac#add('junegunn/fzf')
call minpac#add('cespare/vim-toml')
call minpac#add('racer-rust/vim-racer')
  set hidden
  let g:racer_cmd = "~/.cargo/bin/racer"
  let g:racer_experimental_completer = 1

call minpac#add('k-takata/minpac', {'type': 'opt'})

command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()
