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
" {{
let g:Powerline_symbols = 'fancy'
set laststatus=2 " Always show status line
" }}
Bundle 'http://github.com/scrooloose/nerdtree.git'
" {{
let NERDTreeMinimalUI = 1
nmap <C-p> :NERDTreeToggle<CR>
nmap :sit :NERDTreeFind
" }}

" snippets
Bundle 'http://github.com/MarcWeber/vim-addon-mw-utils.git'
Bundle 'http://github.com/tomtom/tlib_vim.git'
Bundle 'http://github.com/honza/snipmate-snippets.git'
Bundle 'http://github.com/garbas/vim-snipmate.git'
" Bundle 'http://github.com/scrooloose/snipmate-snippets.git'
" Bundle 'http://github.com/msanders/snipmate.vim.git'

Bundle 'http://github.com/altercation/vim-colors-solarized.git'
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
" {{
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
let g:syntastic_enable_balloons = 1
let g:syntastic_auto_jump=1
let g:syntastic_loc_list_height=3
" }}
Bundle 'http://github.com/hallison/vim-markdown.git'
Bundle 'http://github.com/mileszs/ack.vim.git'
Bundle 'http://github.com/tpope/vim-git.git'
Bundle 'http://github.com/michaeljsmith/vim-indent-object.git'
Bundle 'http://github.com/pangloss/vim-javascript.git'
Bundle 'http://github.com/vim-scripts/Tagbar.git'
" {{
nnoremap <silent> <F4> :TagbarOpenAutoClose<CR>
" }}
Bundle 'http://github.com/ervandew/supertab.git'
Bundle 'http://github.com/taq/vim-rspec.git'
Bundle 'http://github.com/mattn/gist-vim.git'
Bundle 'http://github.com/tpope/vim-bundler.git'
Bundle 'http://github.com/tpope/vim-repeat.git'
Bundle 'http://github.com/nelstrom/vim-textobj-rubyblock.git'
Bundle 'http://github.com/kana/vim-textobj-user.git'
Bundle 'http://github.com/ecomba/vim-ruby-refactoring.git'
Bundle 'http://github.com/itspriddle/vim-jquery.git'
Bundle 'http://github.com/kchmck/vim-coffee-script.git'
Bundle 'http://github.com/robbyrussell/oh-my-zsh.git'
Bundle 'http://github.com/jeffkreeftmeijer/vim-numbertoggle.git'
Bundle 'http://github.com/tpope/vim-commentary.git'
Bundle 'http://github.com/godlygeek/tabular.git'
" {{
nmap <Leader>t= :Tabularize /=<CR>
vmap <Leader>t= :Tabularize /=<CR>
nmap <Leader>t: :Tabularize /:\zs<CR>
vmap <Leader>t: :Tabularize /:\zs<CR>
nmap <Leader>t, :Tabularize /,\zs<CR>
vmap <Leader>t, :Tabularize /,\zs<CR>
nmap <Leader>t> :Tabularize /=>\zs<CR>
vmap <Leader>t> :Tabularize /=>\zs<CR>
" }}
Bundle 'http://github.com/vim-scripts/ZoomWin.git'
" {{
nmap <silent> <leader>wo :ZoomWin<CR>
" }}
Bundle 'http://github.com/sjl/gundo.vim.git'
" {{
nnoremap <F5> :GundoToggle<CR>
" }}

Bundle 'http://github.com/vim-scripts/L9.git'
Bundle 'http://github.com/vim-scripts/FuzzyFinder.git'
" {{
let g:fuf_coveragefile_exclude = '\v\~$|\.(o|exe|dll|bak|swp|png|jpg|jpeg|gif|psd)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|tmp|vendor/bundle/.*'
let g:fuf_file_exclude = '\v\~$|\.(o|exe|dll|bak|swp|png|jpg|jpeg|gif|psd)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|tmp|vendor/bundle/.*'
let g:fuf_dir_exclude = '\v(^|[/\\])\.(hg|git|bzr)($|[/\\])|tmp|vendor/bundle/.*'
let g:fuf_enumeratingLimit = 10
let g:fuf_maxMenuWidth = 120
nnoremap <S-f> :FufFile<CR>
nnoremap <C-f> :FufCoverageFile<CR>
" }}

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
set listchars=tab:▸\ ,eol:¬,trail:· " Define how list mode appears, Use the same symbols as TextMate for tabstops and EOLs
                                    "Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59
set modelines=5                     " Debian likes to disable this, The number of lines at the top and bottom to look for modelines.
set scrolloff=1                     " Number of lines to keep above or below the cursor.

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
set suffixes+=.dvi              " Lower priority in wildcards
set showmatch                   " Show matching brackets.
set smartcase                   " Case insensitive searches become sensitive with capitals
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

set guifont=monaco              " font

set ts=2 sts=2 sw=2 noexpandtab
set nu                          " show lines number
set ff=unix                     " unix end of line
set list
nmap <leader>l :set list!<CR>   " Shortcut to rapidly toggle `set list`

" ---------------
" folding
" --------------- {{
set foldenable                                   " Turn on folding
set foldmethod=marker                            " Fold on the marker
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
"
