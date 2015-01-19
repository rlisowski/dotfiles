call plug#begin('~/.vim/plugged')
" ---------------
" UTILITY, plugins required by other plugins
" ---------------
Plug 'https://github.com/tomtom/tlib_vim.git'
Plug 'https://github.com/vim-scripts/L9.git'
" Plug 'https://github.com/MarcWeber/vim-addon-mw-utils.git'

" ---------------
" ColorSchemes
" ---------------
Plug 'https://github.com/vim-scripts/ScrollColors.git' " colorscheme Scroller/Chooser/Browser
Plug 'https://github.com/vim-scripts/Colour-Sampler-Pack.git' " top 100(ish) rated color schemes on vim.sf.net

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
Plug 'https://github.com/rhysd/committia.vim.git'    " More Pleasant Editing on Commit Message
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
Plug 'https://github.com/vim-scripts/LargeFile.git'           " disables certain features of vim for large files
Plug 'https://github.com/EinfachToll/DidYouMean.git'          " ask if I misspelled filename
Plug 'https://github.com/Z1MM32M4N/vim-superman.git'          " man pages in vim
" Plug 'https://github.com/edkolev/tmuxline.vim.git'            " generate tmux status line from vim
Plug 'https://github.com/dietsche/vim-lastplace.git'          " reopen files where you left off

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
Plug 'https://github.com/tmux-plugins/vim-tmux.git'

" ---------------
" SYNTAX
" ---------------
Plug 'https://github.com/scrooloose/syntastic.git'                   " syntax checker
Plug 'https://github.com/mmalecki/vim-node.js.git'                   " File type detect plugin for vim which detects node.js shebang
Plug 'https://github.com/pangloss/vim-javascript.git'                " provides syntax and indent for javascript
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
Plug 'https://github.com/chrisbra/csv.vim.git'                        " CSV formatter

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
Plug 'https://github.com/christoomey/vim-tmux-navigator.git'

" ---------------
" GAMES ;)
" ---------------
Plug 'https://github.com/katono/rogue.vim.git'

" ---------------
" CONFIG
" ---------------
Plug 'https://github.com/korin/vim_plugins_settings.git'
Plug 'https://github.com/korin/vim_core_settings.git'

call plug#end()
