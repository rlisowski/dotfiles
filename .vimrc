if v:progname =~? "evim"
  finish
endif
let mapleader = ","

set nocompatible               " be iMproved
filetype off                   " required!

call plug#begin('~/.vim/plugged')
" ---------------
" UTILITY, plugins required by other plugins
" ---------------
Plug 'https://github.com/tomtom/tlib_vim.git'
Plug 'https://github.com/vim-scripts/L9.git'
" Plug 'https://github.com/MarcWeber/vim-addon-mw-utils.git'

" ---------------
" UI
" ---------------
Plug 'https://github.com/kien/rainbow_parentheses.vim.git'        " mark parentheses with colors
Plug 'https://github.com/bling/vim-airline.git'                   " status bar
Plug 'https://github.com/Yggdroot/indentLine.git'                 " shiw indentation with neat lines
Plug 'https://github.com/sjl/gundo.vim.git'                       " undo view
Plug 'https://github.com/vim-scripts/CursorLineCurrentWindow.git' " cursor line only in current window
Plug 'https://github.com/inside/vim-search-pulse.git'             " highlight search
Plug 'https://github.com/drmikehenry/vim-fontsize.git'            " adjust quickly font size

" ---------------
" GIT
" ---------------
Plug 'https://github.com/tpope/vim-fugitive.git'     " git wrapper
Plug 'https://github.com/tpope/vim-git.git'          " git helpers, commit msg, diff etc
Plug 'https://github.com/gregsexton/gitv.git'        " gitk clone aka repository viewer
Plug 'https://github.com/airblade/vim-gitgutter.git' " mark changed lines in sign column

" ---------------
" BEHAVIOR
" ---------------
Plug 'https://github.com/tpope/vim-abolish.git'               " mostly for better find and replace eg :%s/{S,s}ome/{O,o}ther/g
Plug 'https://github.com/AndrewRadev/splitjoin.vim'           " easyli split/join ruby hashmap, json, javascript object
Plug 'https://github.com/tpope/vim-obsession.git'             " save/restore vim session
Plug 'https://github.com/airblade/vim-rooter.git'             " set working directory
Plug 'https://github.com/godlygeek/tabular.git'               " easy align by char
Plug 'https://github.com/Raimondi/delimitMate.git'            " automatically close parentheses
Plug 'https://github.com/tpope/vim-endwise.git'               " end certain structures automatically
Plug 'https://github.com/tpope/vim-surround.git'              " delete, change and add such surroundings (parentheses, brackets, quotes etc) in pairs
Plug 'https://github.com/tpope/vim-unimpaired.git'            " useful mappings
Plug 'https://github.com/tpope/vim-repeat.git'                " better . command
Plug 'https://github.com/michaeljsmith/vim-indent-object.git' " text object by indentation level
Plug 'https://github.com/kana/vim-textobj-user.git'           " create your own text objects
Plug 'https://github.com/kana/vim-textobj-entire.git'         " text object entire file
Plug 'https://github.com/kana/vim-textobj-datetime.git'       " ext objects for date and time
Plug 'https://github.com/terryma/vim-expand-region.git'       " easily expand region eg visual highlight
Plug 'https://github.com/tpope/vim-rsi.git'                   " Readline key bindings in insert and command line mode
Plug 'https://github.com/tpope/vim-sleuth'                    " keep shiftwidth and expandtab as in other file in the project
Plug 'https://github.com/tpope/vim-eunuch'                    " sugar for the UNIX shell commands
Plug 'https://github.com/mrmargolis/dogmatic.vim.git'         " disable arrows
Plug 'https://github.com/kshenoy/vim-signature.git'           " place, toggle and display marks
Plug 'https://github.com/vim-scripts/VisIncr.git'             " making a column of increasing or decreasing numbers, dates, or daynames
Plug 'https://github.com/tpope/vim-commentary.git'            " easyli toggle lines as comments
Plug 'https://github.com/Lokaltog/vim-easymotion.git'         " simpler way to use some motions
Plug 'https://github.com/vim-scripts/BufOnly.vim.git'         " close any other buffers
Plug 'https://github.com/vim-scripts/SyntaxRange.git'         " syntax highlight for region, required by vimdeck

" ---------------
" SNIPPETS
" ---------------
Plug 'https://github.com/ervandew/supertab.git'  " use tab as a expansion key
Plug 'https://github.com/SirVer/ultisnips.git'   " snippets engine
Plug 'https://github.com/honza/vim-snippets.git' " great snippers collection
" Plug 'https://github.com/matthewsimo/angular-vim-snippets.git' " broken

" ---------------
" RUBY
" ---------------
Plug 'https://github.com/vim-ruby/vim-ruby.git'              " help vim understand ruby, motions textobjects etc
Plug 'https://github.com/tpope/vim-rails.git'                " rails helpers, navigation etc
Plug 'https://github.com/tpope/vim-rake.git'                 " rake wraper
Plug 'https://github.com/sunaku/vim-ruby-minitest.git'       " syntax and completion for ruby minitest
Plug 'https://github.com/ecomba/vim-ruby-refactoring.git'    " refactoring helpers
Plug 'https://github.com/nelstrom/vim-textobj-rubyblock.git' " ruby textobject
Plug 'https://github.com/t9md/vim-ruby-xmpfilter.git'        " display result in comment
Plug 'https://github.com/tpope/vim-bundler.git'              " bundler helpers
Plug 'https://github.com/danchoi/ri.vim.git'                 " search and navigate Ruby library and gem documentation

" ---------------
" MARKUP
" ---------------
Plug 'https://github.com/tpope/vim-haml.git'
Plug 'https://github.com/slim-template/vim-slim.git'
Plug 'https://github.com/mustache/vim-mustache-handlebars.git'
Plug 'https://github.com/tpope/vim-markdown.git'
Plug 'https://github.com/suan/vim-instant-markdown.git'
Plug 'https://github.com/rstacruz/sparkup.git'                 " write html faster

" ---------------
" NAVIGATION
" ---------------
Plug 'https://github.com/scrooloose/nerdtree.git'     " project tree navigation window
Plug 'https://github.com/tpope/vim-vinegar.git'       " improwments for netrw
Plug 'https://github.com/kien/ctrlp.vim.git'          " find file/buffer
Plug 'https://github.com/szw/vim-ctrlspace.git'       " list open buffers
Plug 'https://github.com/majutsushi/tagbar.git'       " navigate by tags
Plug 'https://github.com/lukaszkorecki/CoffeeTags.git'
Plug 'https://github.com/vim-scripts/mru.vim.git'     " most recent used files
Plug 'https://github.com/rking/ag.vim.git'            " search plugin
Plug 'https://github.com/vim-scripts/matchit.zip.git' " % behavior
Plug 'https://github.com/dockyard/vim-easydir.git'    " simple way to create, edit and save files and directories

" ---------------
" SYNTAX
" ---------------
Plug 'https://github.com/scrooloose/syntastic.git'                   " syntax checker
Plug 'https://github.com/mmalecki/vim-node.js.git'                   " File type detect plugin for vim which detects node.js shebang
Plug 'https://github.com/pangloss/vim-javascript.git'
Plug 'https://github.com/burnettk/vim-angular.git'
Plug 'https://github.com/jelera/vim-javascript-syntax.git'
" Plug 'https://github.com/othree/javascript-libraries-syntax.vim.git'
Plug 'https://github.com/othree/xml.vim.git'
Plug 'https://github.com/kchmck/vim-coffee-script.git'
Plug 'https://github.com/othree/html5.vim.git'
Plug 'https://github.com/rodjek/vim-puppet.git'
Plug 'https://github.com/vim-scripts/lua-support.git'
Plug 'https://github.com/itspriddle/vim-jquery.git'
Plug 'https://github.com/groenewege/vim-less.git'
" Plug 'https://github.com/ap/vim-css-color.git'
" Plug 'https://github.com/hail2u/vim-css3-syntax'
" Plug 'https://github.com/cakebaker/scss-syntax.vim'

" ---------------
" GAMES ;)
" ---------------
Plug 'https://github.com/katono/rogue.vim.git'
call plug#end()

filetype plugin indent on     " required!
"
" Brief help
" :PluginList          - list configured bundles
" :PluginInstall(!)    - install(update) bundles
" :PluginSearch(!) foo - search(or refresh cache first) for foo
" :PluginClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set shell=/bin/sh
set nocompatible
set autoindent
set autowrite " Automatically save before commands like :next and :make
set backspace=indent,eol,start " allow backspacing over everything in insert mode


" ---------------
" Color
" ---------------
set background=dark
colorscheme codeschool
highlight clear SignColumn

" ---------------
" Backups
" ---------------
set backup
set backupskip+=*.tmp,crontab.* " do not make backup for this files
set backupdir=$HOME/.vim/backup
set directory=$HOME/.vim/tmp

" ---------------
" UI
" ---------------
set ruler                           " show the cursor position all the time
set cursorline                      " Only have cursorline in current window

if has("balloon_eval") && has("unix")
  set ballooneval
endif
set breakindent
" set showbreak=↖
let &showbreak='↖ '
set cmdheight=1                     " command line height
set complete-=i                     " Searching includes can be slow
set display=lastline                "
set joinspaces                      " Put spaces between lines joined with the > command.
set lazyredraw                      " Do not redraw the screen during macro execution.
set list
set listchars=tab:▸\ ,eol:¬,trail:·,extends:❯,precedes:❮,nbsp:+ " Define how list mode appears, Use the same symbols as TextMate for tabstops and EOLs
nmap <leader>l :set list!<CR>       " Shortcut to rapidly toggle `set list`
set modelines=5                     " Debian likes to disable this, The number of lines at the top and bottom to look for modelines.
set cpoptions+=$                    " show $ on the end of selection
set virtualedit=all                 " enable virtualedit, useful for visual block editing
set linespace=2                     " more space between lines
set guicursor+=a:blinkon0           " Disable gui cursor blinking
set ttyfast                         " Indicates a fast terminal connection.

if exists('+colorcolumn')
  set colorcolumn=120
endif

" :w!! saves a file as root
cmap w!! w !sudo tee % >/dev/null<CR>

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
noremap <Leader>/ :set invhls<CR> " toggle highlight

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
set shiftround                  " round shift
set laststatus=2
set showcmd
" Number of lines to keep above or below the cursor.
if !&scrolloff
  set scrolloff=3
endif
" set printoptions=paper:letter
if !&sidescrolloff
  set sidescrolloff=5
endif
set display+=lastline
set autoread                    " read file from disk when changed in another editor
set autowrite                   " auto write file on several commands
set encoding=utf-8              " Use UTF-8 everywhere.
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
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.md5.*
set winaltkeys=no

set splitbelow                  " Split windows at bottom
set splitright

" set guifont=Inconsolata\ for\ Powerline\ 12
set guifont=Ubuntu\ Mono\ for\ Powerline\ 12

set ts=2 sts=2 sw=2 noexpandtab
set relativenumber                " show lines number
set number                        " show lines number
" set nuw=6                       " column with line numbers is 6 chars width
set ff=unix                       " unix end of line
set cryptmethod=blowfish2         " encryption method :X or -x in command line

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
" }}

" ---------------
" move lines
" --------------- {{
if !has('gui_running')
  let c='a'
  while c <= 'z'
    exec "set <A-".c.">=\e".c
    exec "imap \e".c." <A-".c.">"
    let c = nr2char(1+char2nr(c))
  endw
  set timeout ttimeoutlen=50
endif

nmap <A-j> ]e==
nmap <A-k> [e==
imap <A-j> <Esc>]e==i
imap <A-k> <Esc>[e==i
vmap <A-j> ]egv=gv
vmap <A-k> [egv=gv
" }}

" ---------------
" switch tabs
" --------------- {{
map <A-1> 1gt
map <A-2> 2gt
map <A-3> 3gt
map <A-4> 4gt
map <A-5> 5gt
map <A-6> 6gt
map <A-7> 7gt
map <A-8> 8gt
map <A-9> 9gt
map <A-0> :tablast<CR>
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
" nmap <Leader>bi PluginInstall<CR>
" nmap <Leader>bu PluginInstall!<CR> " Because this also updates
" nmap <Leader>bc PluginClean
" }}


" ----------------------------------------
" Functions
" ----------------------------------------

" ---------------
" Trailing Whitespaces
" --------------- {{
function! <SID>StripTrailingWhitespaces(manual)
  let current_filetype = &filetype
  if current_filetype != 'markdown'
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
  elseif a:manual
    echoerr "Trailing whitespaces are part of Markdown syntax. Clean them yourself."
  endif
endfunction

nnoremap <silent> <F3> :call <SID>StripTrailingWhitespaces(1)<CR>
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces(0)
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
" shifting tabs
" --------------- {{
function! ShiftTab(direction)
     let tab_number = tabpagenr()
     if a:direction == 0
         if tab_number == 1
             exe 'tabm' . tabpagenr('$')
         else
             exe 'tabm' . (tab_number - 2)
         endif
     else
         if tab_number == tabpagenr('$')
             exe 'tabm ' . 0
         else
             exe 'tabm ' . tab_number
         endif
     endif
     return ''
endfunction

inoremap <silent> <C-S-PageUp>  <C-r>=ShiftTab(0)<CR>
inoremap <silent> <C-S-PageDown>  <C-r>=ShiftTab(1)<CR>

noremap <silent> <C-S-PageUp>  :call ShiftTab(0)<CR>
noremap <silent> <C-S-PageDown> :call ShiftTab(1)<CR>
" }}

" ---------------
" File types settings
" --------------- {{
" CSS (tab width 2 chr)
autocmd FileType css set et
autocmd FileType css set sw=2
autocmd FileType css set ts=2
autocmd FileType css set sts=2
" less (tab width 2 chr)
autocmd FileType less set et
autocmd FileType less set sw=2
autocmd FileType less set ts=2
autocmd FileType less set sts=2
" JavaScript (tab width 2 chr)
autocmd FileType javascript set et
autocmd FileType javascript set sw=2
autocmd FileType javascript set ts=2
autocmd FileType javascript set sts=2
" HTML (tab width 2 chr)
autocmd FileType html set et
autocmd FileType html set sw=2
autocmd FileType html set ts=2
autocmd FileType html set sts=2
"  }}


if filereadable($HOME."/.vimrc.local")
  source $HOME/.vimrc.local
endif
