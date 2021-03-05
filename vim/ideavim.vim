let mapleader=","

""" -----------------------------------------
""" Leader actions
""" -----------------------------------------
map <leader>t :action FileStructurePopup<CR>
map <leader>z :action GotoFile<CR>
map <leader>v :action RerunFailedTests<CR>
map <leader>V :action RerunTests<CR>
map <leader>r :action RecentFiles<CR>
map <leader>g :action FindInPath<CR>
map <leader>G :action Git.Menu<CR>
map <leader>s :action SaveAll<CR>
map <leader>S :action OptimizeImports<CR>
map <leader>c :action ActivateTerminalToolWindow<CR>
map <leader>b :action Annotate<CR>
map <leader>a :action ToggleBookmark<CR>
map <leader>A :action ShowBookmarks<CR>
map <leader>F :action ReformatCode<CR>
map <leader>q :on<CR>
map <leader>w <c-w>w
map <leader>f gyW,z
map <leader>e gyw,g

""" -----------------------------------------
""" Mappings --------------------------------
""" -----------------------------------------
map gf :action GotoFile<CR>
map gy "+y
map ]a :action GotoNextBookmark<CR>
map [a :action GotoPreviousBookmark<CR>

map / /\v
map ? ?\v
map <space> /
map <c-space> ?
map `` ``zz
map GG gyw,g
map ff gyw,z

imap jj <Esc>
" imap <c-h> <A-/>
" imap <c-H> <A-S-/>
imap <c-b> <Left>
imap <c-f> <Right>

""" -----------------------------------------
""" Plugins  --------------------------------
""" -----------------------------------------
set surround
set multiple-cursors
set commentary
set argtextobj
set easymotion
set textobj-entire
set ReplaceWithRegister

""" -----------------------------------------
""" Common settings -------------------------
""" -----------------------------------------
set clipboard on
set history 300
set visualbell
set ignorecase
set incsearch
set smartcase
set showmode
set showcmd
set digraph
set so=5
set nu

""" -----------------------------------------
""" Idea specific settings ------------------
""" -----------------------------------------
set ideajoin
set ideastatusicon=gray
set idearefactormode=keep

