if v:progname =~? "evim"
  finish
endif
let mapleader = ","

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
Bundle 'http://github.com/Lokaltog/vim-powerline.git'
Bundle 'https://github.com/vim-scripts/YankRing.vim.git'
Bundle 'http://github.com/scrooloose/nerdtree.git'
Bundle 'http://github.com/jistr/vim-nerdtree-tabs.git'
Bundle 'http://github.com/ervandew/supertab.git'
Bundle 'http://github.com/MarcWeber/vim-addon-mw-utils.git'
Bundle 'http://github.com/tomtom/tlib_vim.git'
Bundle 'http://github.com/honza/snipmate-snippets.git'
Bundle 'http://github.com/garbas/vim-snipmate.git'
Bundle 'http://github.com/altercation/vim-colors-solarized.git'
Bundle 'http://github.com/vim-scripts/molokai.git'
Bundle 'http://github.com/tpope/vim-cucumber.git'
Bundle 'http://github.com/tpope/vim-endwise.git'
Bundle 'http://github.com/tpope/vim-haml.git'
Bundle 'http://github.com/tpope/vim-pastie.git'
Bundle 'http://github.com/tpope/vim-rails.git'
Bundle 'http://github.com/tpope/vim-rake.git'
Bundle 'http://github.com/tpope/vim-surround.git'
Bundle 'http://github.com/tpope/vim-unimpaired.git'
Bundle 'http://github.com/tpope/vim-fugitive.git'
Bundle 'http://github.com/tpope/vim-ragtag.git'
Bundle 'http://github.com/scrooloose/syntastic.git'
Bundle 'http://github.com/hallison/vim-markdown.git'
Bundle 'http://github.com/mileszs/ack.vim.git'
Bundle 'http://github.com/tpope/vim-git.git'
Bundle 'http://github.com/gregsexton/gitv.git'
Bundle 'http://github.com/michaeljsmith/vim-indent-object.git'
Bundle 'http://github.com/pangloss/vim-javascript.git'
Bundle 'http://github.com/majutsushi/tagbar.git'
Bundle 'http://github.com/taq/vim-rspec.git'
Bundle 'http://github.com/mattn/gist-vim.git'
Bundle 'http://github.com/tpope/vim-bundler.git'
Bundle 'http://github.com/tpope/vim-repeat.git'
Bundle 'http://github.com/vim-scripts/matchit.zip.git'
Bundle 'http://github.com/kana/vim-textobj-user.git'
Bundle 'http://github.com/kana/vim-textobj-entire.git'
Bundle 'http://github.com/vim-ruby/vim-ruby.git'
Bundle 'http://github.com/ecomba/vim-ruby-refactoring.git'
Bundle 'http://github.com/danchoi/ri.vim.git'
Bundle 'http://github.com/itspriddle/vim-jquery.git'
Bundle 'http://github.com/kchmck/vim-coffee-script.git'
Bundle 'http://github.com/jeffkreeftmeijer/vim-numbertoggle.git'
Bundle 'http://github.com/tpope/vim-commentary.git'
Bundle 'http://github.com/godlygeek/tabular.git'
Bundle 'http://github.com/vim-scripts/ZoomWin.git'
Bundle 'http://github.com/sjl/gundo.vim.git'
Bundle 'http://github.com/vim-scripts/L9.git'
Bundle 'http://github.com/vim-scripts/session.vim--Odding.git'
Bundle 'http://github.com/AndrewRadev/splitjoin.vim'
Bundle 'http://github.com/vim-scripts/Specky.git'
Bundle 'http://github.com/mmalecki/vim-node.js.git'
Bundle 'http://github.com/jeetsukumaran/vim-buffergator.git'
Bundle 'http://github.com/nathanaelkane/vim-indent-guides.git'
Bundle 'http://github.com/vim-scripts/Rename2.git'
Bundle 'http://github.com/chrisbra/NrrwRgn.git'
Bundle 'http://github.com/rgarver/Kwbd.vim.git'
Bundle 'http://github.com/Lokaltog/vim-easymotion.git'
Bundle 'http://github.com/ap/vim-css-color.git'
Bundle 'http://github.com/hail2u/vim-css3-syntax'
Bundle 'http://github.com/cakebaker/scss-syntax.vim'
Bundle 'http://github.com/groenewege/vim-less'
Bundle 'http://github.com/vim-scripts/VisIncr.git'
Bundle 'http://github.com/spolu/dwm.vim.git'
Bundle 'http://github.com/vim-scripts/lua-support.git'
Bundle 'http://github.com/Raimondi/delimitMate.git'
Bundle 'http://github.com/godlygeek/csapprox.git'
Bundle 'http://github.com/kshenoy/vim-signature.git'
Bundle 'http://github.com/mrmargolis/dogmatic.vim.git'
Bundle 'http://github.com/vim-scripts/mru.vim.git'
Bundle 'http://github.com/Shougo/neocomplcache.git'
Bundle 'http://github.com/rodjek/vim-puppet.git'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..


set nocompatible
set autoindent
set autowrite " Automatically save before commands like :next and :make
set backspace=indent,eol,start " allow backspacing over everything in insert mode


" ---------------
" Color
" ---------------
set background=dark
colorscheme solarized

" ---------------
" Backups
" ---------------
set backup
set backupskip+=*.tmp,crontab.* " do not make backup for this files
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

" ---------------
" UI
" ---------------
set ruler                           " show the cursor position all the time
set cursorline                      " Only have cursorline in current window

if has("balloon_eval") && has("unix")
  set ballooneval
endif
if exists(" &breakindent")
  set breakindent showbreak=+++
elseif has("gui_running")
  set showbreak=+++
endif
set cmdheight=1                     " command line height
set complete-=i                     " Searching includes can be slow
set display=lastline                "
set joinspaces                      " Put spaces between lines joined with the > command.
set lazyredraw                      " Do not redraw the screen during macro execution.
set list
set listchars=tab:▸\ ,eol:¬,trail:·,extends:❯,precedes:❮ " Define how list mode appears, Use the same symbols as TextMate for tabstops and EOLs
nmap <leader>l :set list!<CR>       " Shortcut to rapidly toggle `set list`
                                    "Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59
set modelines=5                     " Debian likes to disable this, The number of lines at the top and bottom to look for modelines.
set scrolloff=1                     " Number of lines to keep above or below the cursor.
set cpoptions+=$                    " show $ on the end of selection
set virtualedit=all                 " enable virtualedit, useful for visual block editing
set linespace=2                     " more space between lines

if exists('+colorcolumn')
  set colorcolumn=120
endif

cmap w!! w !sudo tee % >/dev/null   ” :w!! saves a file as root

" -------------
"  lang
" -------------
if exists("+spelllang")
  let g:spellfile_URL = 'http://ftp.vim.org/vim/runtime/spell'
  set spelllang=en_us,pl
  set spell
endif

" ---------------
" Behaviors
" ---------------
syntax enable

set hlsearch
set incsearch
noremap <Leader>/ :set invhls<CR>

set textwidth=120
set autoread                    " Automatically reload changes if detected
set wildmenu                    " Turn on WiLd menu
set history=768                 " Number of things to remember in history.
set cf                          " Enable error files & error jumping.
set clipboard+=unnamed          " Yanks go on clipboard instead.
set autowrite                   " Writes on make/shell commands
" set timeoutlen=500            " Time to wait for a command (after leader for example)
" set ttimeoutlen=50            " Make Esc work faster
set formatoptions=crql
set nrformats=
set suffixes+=.dvi              " Lower priority in wildcards
set showmatch                   " Show matching brackets.
set smartcase                   " Case insensitive searches become sensitive with capitals
" Keep search pattern at the center of the screen.
" {{
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
nnoremap <silent> g# g#zz
" }}
set smarttab                    " sw at the start of the line, sts everywhere else
if v:version >= 700
  set viminfo=!,'20,<50,s10,h
endif
set virtualedit=block
set wildmode=longest:full,full
set wildignore+=*~
set winaltkeys=no
set sidescrolloff=5             " set printoptions=paper:letter

set splitbelow                  " Split windows at bottom
set splitright

set guifont=monaco\ 11          " font

set ts=2 sts=2 sw=2 noexpandtab
set nu                          " show lines number
set nuw=6                       " column with line numbers is 6 chars width
set ff=unix                     " unix end of line

" ---------------
" folding
" --------------- {{
set foldenable                                   " Turn on folding
set foldmethod=syntax                            " Fold on the marker
set foldlevel=100                                " Don't autofold anything (but I can still fold manually)
set foldlevelstart=99                            " Remove folds
set foldopen=block,hor,mark,percent,quickfix,tag " what movements open fold

" ---------------
" mouse
" --------------- {{
set mouse=a                     " enable mouse
set mousehide                   " Hide mouse after chars typed
set mousemodel=popup            " the right mouse button causes a small pop-up menu to appear

" ---------------
" work with windows
" --------------- {{
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" }}

" ---------------
" Switch between buffers
" --------------- {{
noremap <tab> :bn<CR>
noremap <S-tab> :bp<CR>
nmap <leader>d :bprevious<CR>:bdelete #<CR> " Close buffer
nmap <leader>D :bufdo bd<CR>                " Close all buffers
nnoremap <leader><leader> <C-^>             " Switch between last two buffers
" }}

" ---------------
" move lines
" --------------- {{
nmap <A-j> ]e==
nmap <A-k> [e==
imap <A-j> <Esc>]e==i
imap <A-k> <Esc>[e==i
vmap <A-j> ]egv=gv
vmap <A-k> [egv=gv
" }}

" ---------------
" reopen file on last known position
" --------------- {{
" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
" Also don't do it when the mark is in the first line, that is the default
" position when opening a file.
autocmd BufReadPost *
      \ if line("'\"") > 1 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif
" }}


" ---------------
" easy editing .vimrc file
" --------------- {{
nmap <Leader>rc :source ~/.vimrc<CR>
nmap <Leader>rt :tabnew ~/.vimrc<CR>
nmap <Leader>re :e ~/.vimrc<CR>
" }}



" ----------------------------------------
" Plugins
" ----------------------------------------


" ---------------
" Vundle
" --------------- {{
" nmap <Leader>bi BundleInstall<CR>
" nmap <Leader>bu BundleInstall!<CR> " Because this also updates
" nmap <Leader>bc BundleClean
" }}


" ----------------------------------------
" Functions
" ----------------------------------------

" ---------------
" Trailing Whitespaces
" --------------- {{
function! <SID>StripTrailingWhitespaces()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  %s/\s\+$//e
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

nnoremap <silent> <F3> :call <SID>StripTrailingWhitespaces()<CR>
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
" }}

" ---------------
" Quick spelling fix (first item in z= list)
" --------------- {{
function! QuickSpellingFix()
  if &spell
    normal 1z=
  else
    " Enable spelling mode and do the correction
    set spell
    normal 1z=
    set nospell
  endif
endfunction

command! QuickSpellingFix call QuickSpellingFix()
nmap <silent> <leader>z :QuickSpellingFix<CR>
" }}


" ---------------
" subversion blame
" --------------- {{
vmap gl :<C-U>!svn blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>
" }}

" ---------------
" File types settings
" --------------- {{
" CSS (tab width 2 chr)
autocmd FileType css set et
autocmd FileType css set sw=2
autocmd FileType css set ts=2
autocmd FileType css set sts=2
" JavaScript (tab width 2 chr)
autocmd FileType javascript set et
autocmd FileType javascript set sw=2
autocmd FileType javascript set ts=2
autocmd FileType javascript set sts=2
"  }}

