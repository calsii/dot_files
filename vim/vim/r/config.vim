set nocompatible

if has("gui_vimr")
  " colorscheme medic_chalk
elseif exists("g:eovim_running")
  set guifont=Fira\ Code-21:style=Medium
  set linespace=20
  let g:eovim_ext_cmdline = 1
  let g:eovim_ext_popupmenu = 1
  let g:eovim_ext_tabline = 1
  let g:eovim_theme_react_to_key_presses = 1
  let g:eovim_theme_react_to_caps_lock = 1
  let g:eovim_cursor_cuts_ligatures = 0

  set guicursor=a:blinkon0
  set guicursor+=n-v-c:block-Cursor
  set guicursor+=i:ver20-iCursor
  set guicursor+=r:hor20-iCursor

  let g:eovim_theme_completion_styles = {
	\ 'default': 'font_weight=bold color=#ffffff',
	\ 'm': 'color=#ff00ff',
	\ 'v': 'color=#00ffff',
	\ 'f': 'color=#ffff00',
	\ 't': 'color=#0000ff',
	\ 'd': 'color=#0000ff',
	\}
else
  set guifont=JetBrains\ Mono:h12.5
  set linespace=18
  " colorscheme jellybeans
endif
highlight HighlightedyankRegion cterm=reverse gui=reverse

let g:material_terminal_italics = 1
let g:material_theme_style = 'darker'
colorscheme material
if (has('termguicolors'))
  set termguicolors
endif
" let g:airline_theme = 'material'

autocmd vimenter * colorscheme gruvbox

let mapleader = ","

set number
set cursorline

set clipboard=unnamedplus

set ignorecase
set smartcase

set expandtab
set tabstop=2
set shiftwidth=2
if has("autocmd")
  autocmd FileType php,rs setlocal ts=4 sts=4 sw=4
  " jump to the last position when reopening a file
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  autocmd BufNewFile,BufRead *.sc set filetype=scala
  autocmd BufNewFile,BufRead *.scheme set filetype=ss
endif

runtime macros/matchit.vim

" Enable filetype plugins
filetype plugin on

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

" :W sudo saves the file
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" Set 5 lines to the cursor - when moving vertically using j/k
set so=5

" Avoid garbled characters in Chinese language windows OS
let $LANG='en'
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
  set wildignore+=.git\*,.hg\*,.svn\*
else
  set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Set extra options when running in GUI mode
if has("gui_running")
  set guioptions-=T
  set guioptions-=e
  set t_Co=256
  set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowb
set noswapfile

" Linebreak on 500 characters
set lbr
set tw=500

set si "Smart indent
set wrap "Wrap lines

" Delete trailing white space on save, useful for some filetypes ;)
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

if has("autocmd")
  autocmd BufWritePre *.* :call CleanExtraSpaces()
endif

" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" open help file vertically
cabbrev h vert bo h

" set colorcolumn=99
" hi ColorColumn ctermbg=lightcyan

" Triger `autoread` when files changes on disk
" https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
" https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
  \ if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == '' | checktime | endif

" Notification after file change
" https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
