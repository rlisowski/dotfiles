call plug#begin('~/.vim/plugged')
" ---------------
" UTILITY, plugins required by other plugins
" ---------------
Plug 'https://github.com/tomtom/tlib_vim.git'
Plug 'https://github.com/vim-scripts/L9.git'

" ---------------
" UI
" ---------------
Plug 'https://github.com/bling/vim-airline.git'                   " status bar
Plug 'https://github.com/Yggdroot/indentLine.git'                 " shiw indentation with neat lines
Plug 'https://github.com/sjl/gundo.vim.git'                       " undo view
Plug 'https://github.com/drmikehenry/vim-fontsize.git'            " adjust quickly font size

" ---------------
" GIT
" ---------------
Plug 'https://github.com/tpope/vim-git.git'              " git helpers, commit msg, diff etc
Plug 'https://github.com/chrisbra/vim-diff-enhanced.git' " creating better diffs (sometimes)
Plug 'https://github.com/rhysd/committia.vim.git'        " More Pleasant Editing on Commit Message
" Plug 'https://github.com/airblade/vim-gitgutter.git'     " mark changed lines in sign column
" Plug 'https://github.com/tpope/vim-fugitive.git'         " git wrapper
" Plug 'https://github.com/gregsexton/gitv.git'            " gitk clone aka repository viewer

" ---------------
" BEHAVIOR
" ---------------
Plug 'https://github.com/tpope/vim-abolish.git'               " mostly for better find and replace eg :%s/{S,s}ome/{O,o}ther/g
Plug 'https://github.com/AndrewRadev/splitjoin.vim.git'       " easyli split/join ruby hashmap, json, javascript object
" Plug 'https://github.com/tpope/vim-obsession.git'             " save/restore vim session
" Plug 'https://github.com/dhruvasagar/vim-prosession.git'      " handle sessions like a pro requires vim-obsession
Plug 'https://github.com/airblade/vim-rooter.git'             " set working directory
" Plug 'https://github.com/godlygeek/tabular.git'               " easy align by char
Plug 'https://github.com/junegunn/vim-easy-align.git'         " easy align by char eg gaipa=
Plug 'https://github.com/Raimondi/delimitMate.git'            " automatically close parentheses
Plug 'https://github.com/tpope/vim-endwise.git'               " end certain structures automatically
Plug 'https://github.com/tpope/vim-surround.git'              " delete, change and add such surroundings (parentheses, brackets, quotes etc) in pairs
Plug 'https://github.com/tpope/vim-unimpaired.git'            " useful mappings
Plug 'https://github.com/tpope/vim-repeat.git'                " better . command
Plug 'https://github.com/michaeljsmith/vim-indent-object.git' " text object by indentation level
Plug 'https://github.com/kana/vim-textobj-user.git'           " create your own text objects
Plug 'https://github.com/kana/vim-textobj-entire.git'         " text object entire file
Plug 'https://github.com/kana/vim-textobj-datetime.git'       " ext objects for date and time
Plug 'https://github.com/kana/vim-textobj-indent.git'         " ext object for indentation
Plug 'https://github.com/glts/vim-textobj-indblock.git'       " ext object of indentation whitespace
Plug 'https://github.com/tpope/vim-speeddating.git'           " use CTRL-A/CTRL-X to increment dates, times, and more
Plug 'https://github.com/wellle/targets.vim.git'              " additional text objects like cin) da, etc.
Plug 'https://github.com/terryma/vim-expand-region.git'       " easily expand region eg visual highlight
Plug 'https://github.com/tpope/vim-rsi.git'                   " Readline key bindings in insert and command line mode
Plug 'https://github.com/tpope/vim-sleuth'                    " keep shiftwidth and expandtab as in other file in the project
" Plug 'https://github.com/tpope/vim-eunuch'                    " sugar for the UNIX shell commands
" Plug 'https://github.com/mrmargolis/dogmatic.vim.git'         " disable arrows
Plug 'https://github.com/kshenoy/vim-signature.git'           " place, toggle and display marks
Plug 'https://github.com/vim-scripts/VisIncr.git'             " making a column of increasing or decreasing numbers, dates, or daynames
Plug 'https://github.com/tpope/vim-commentary.git'            " easyli toggle lines as comments
" Plug 'https://github.com/Lokaltog/vim-easymotion.git'         " simpler way to use some motions
Plug 'https://github.com/vim-scripts/BufOnly.vim.git'         " close any other buffers
Plug 'https://github.com/vim-scripts/SyntaxRange.git'         " syntax highlight for region, required by vimdeck
Plug 'https://github.com/vim-scripts/LargeFile.git'           " disables certain features of vim for large files
Plug 'https://github.com/EinfachToll/DidYouMean.git'          " ask if I misspelled filename
Plug 'https://github.com/Z1MM32M4N/vim-superman.git'          " man pages in vim
" Plug 'https://github.com/edkolev/tmuxline.vim.git'            " generate tmux status line from vim
Plug 'https://github.com/dietsche/vim-lastplace.git'          " reopen files where you left off
" Plug 'https://github.com/szw/vim-maximizer.git'               " maximize current window on demand
" Plug 'https://github.com/joonty/vdebug.git'                   " debug with vim
" Plug 'https://github.com/ashisha/image.vim.git'               " image preview
Plug 'https://github.com/tpope/vim-dispatch.git'              " async vim dispatcher
" Plug 'https://github.com/janko-m/vim-test.git'                " run any test
Plug 'https://github.com/diepm/vim-rest-console.git'          " REST console
Plug 'https://github.com/ConradIrwin/vim-bracketed-paste.git' " transparent pasting into vim
Plug 'https://github.com/chrisbra/Recover.vim.git'            " Show differences for recovered files
Plug 'https://github.com/mhinz/vim-startify.git'              " A fancy start screen for Vim
" Plug 'https://github.com/haya14busa/incsearch.vim.git'
Plug 'https://github.com/wellle/visual-split.vim.git'         " Vim plugin to control splits with visual selections or text objects
" Plug 'https://github.com/unblevable/quick-scope.git'          " Lightning fast left-right movement in Vim
Plug 'https://github.com/AndrewRadev/switch.vim.git'          " switch segments of text with predefined replacements
" Plug 'https://github.com/mhinz/vim-randomtag.git'             " Jump to random Vim documentation
Plug 'https://github.com/sk1418/Join.git'                     " a better (hopefully) :Join command in vim
Plug 'https://github.com/junegunn/vim-peekaboo.git'           " Peekaboo extends \" and @ in normal mode and <CTRL-R> in insert mode so you can see the contents of the registers.
Plug 'https://github.com/wincent/terminus.git'                " Enhanced terminal integration for Vim
" Plug 'https://github.com/wincent/loupe.git'                   " Enhanced in-file search for Vim

" ---------------
" SNIPPETS
" ---------------
Plug 'https://github.com/Valloric/YouCompleteMe.git', { 'do': './install.sh' } " code-completion engine
Plug 'https://github.com/SirVer/ultisnips.git'   " snippets engine
Plug 'https://github.com/honza/vim-snippets.git' " great snippers collection
" Plug 'https://github.com/matthewsimo/angular-vim-snippets.git' " broken

" ---------------
" RUBY
" ---------------
Plug 'https://github.com/vim-ruby/vim-ruby.git'              " help vim understand ruby, motions textobjects etc
Plug 'https://github.com/tpope/vim-rails.git'                " rails helpers, navigation etc
Plug 'https://github.com/tpope/vim-rake.git'                 " rake wraper
Plug 'git@github.com:keith/rspec.vim.git'                    " Better rspec syntax highlighting
Plug 'https://github.com/sunaku/vim-ruby-minitest.git'       " syntax and completion for ruby minitest
" Plug 'https://github.com/ecomba/vim-ruby-refactoring.git'    " refactoring helpers
Plug 'https://github.com/nelstrom/vim-textobj-rubyblock.git' " ruby textobject
" Plug 'https://github.com/t9md/vim-ruby-xmpfilter.git'        " display result in comment
Plug 'https://github.com/tpope/vim-bundler.git'              " bundler helpers
" Plug 'https://github.com/danchoi/ri.vim.git'                 " search and navigate Ruby library and gem documentation

" ---------------
" ELIXIR
" ---------------
Plug 'https://github.com/elixir-lang/vim-elixir.git'         " elixir support
Plug 'https://github.com/edkolev/erlang-motions.vim.git'
Plug 'https://github.com/jimenezrick/vimerl.git'

" ---------------
" MARKUP
" ---------------
Plug 'https://github.com/tpope/vim-haml.git'
Plug 'https://github.com/slim-template/vim-slim.git'          " slim syntax highlighting
Plug 'https://github.com/mustache/vim-mustache-handlebars.git'
" Plug 'https://github.com/tpope/vim-markdown.git'
Plug 'https://github.com/gabrielelana/vim-markdown.git'        " environment to create Markdown files with a syntax highlight
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
" Plug 'https://github.com/rodjek/vim-puppet.git'
" Plug 'https://github.com/vim-scripts/lua-support.git'
" Plug 'https://github.com/itspriddle/vim-jquery.git'
Plug 'https://github.com/groenewege/vim-less.git'
" Plug 'https://github.com/ap/vim-css-color.git'
" Plug 'https://github.com/hail2u/vim-css3-syntax'
Plug 'https://github.com/cakebaker/scss-syntax.vim'
" Plug 'https://github.com/chrisbra/csv.vim.git'                        " CSV formatter
" Plug 'https://github.com/ekalinin/Dockerfile.vim.git'                 " docker file syntax
" Plug 'https://github.com/tmatilai/gitolite.vim.git'                   " gitolite syntax
Plug 'https://github.com/tpope/vim-dotenv.git'                        " Basic support for .env and Procfile

" ---------------
" NAVIGATION
" ---------------
Plug 'https://github.com/scrooloose/nerdtree.git'     " project tree navigation window
" Plug 'https://github.com/tpope/vim-vinegar.git'       " improwments for netrw
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'      " find file/buffer
Plug 'https://github.com/szw/vim-ctrlspace.git'       " list open buffers
" Plug 'https://github.com/majutsushi/tagbar.git'       " navigate by tags
if !has('nvim')
	" Plug 'https://github.com/lukaszkorecki/CoffeeTags.git'
endif
Plug 'https://github.com/vim-scripts/mru.vim.git'     " most recent used files
" Plug 'https://github.com/rking/ag.vim.git'            " search plugin
Plug 'https://github.com/gabesoft/vim-ags.git'        " Silver searcher (AG) plugin
" Plug 'https://github.com/wincent/ferret.git'          " multi-file search
Plug 'https://github.com/vim-scripts/matchit.zip.git' " % behavior
Plug 'https://github.com/dockyard/vim-easydir.git'    " simple way to create, edit and save files and directories
Plug 'https://github.com/christoomey/vim-tmux-navigator.git'

" ---------------
" GAMES ;)
" ---------------
" Plug 'https://github.com/katono/rogue.vim.git'

" ---------------
" CONFIG
" ---------------
Plug 'https://github.com/rlisowski/vim_plugins_settings.git'
Plug 'https://github.com/rlisowski/vim_core_settings.git'

call plug#end()
