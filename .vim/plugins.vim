call plug#begin('~/.vim/plugged')

Plug 'dstein64/vim-startuptime'                                    " profiling Vim's startup time

Plug 'tomtom/tlib_vim'
Plug 'vim-scripts/L9'

Plug 'bling/vim-airline'                                           " status bar
Plug 'mbbill/undotree'                                             " undo view
Plug 'tpope/vim-git'                                               " git helpers, commit msg, diff etc
Plug 'rhysd/committia.vim'                                         " More Pleasant Editing on Commit Message
Plug 'tpope/vim-fugitive'                                          " git wrapper
Plug 'tpope/vim-rhubarb'                                           " Enables :Gbrowse from fugitive.vim to open GitHub URLs.
Plug 'rbong/vim-flog'                                              " A lightweight and powerful git branch viewer for vim.
Plug 'hotwatermorning/auto-git-diff'                               " git diff for Git Rebase Interactive
Plug 'rhysd/git-messenger.vim'                                     " shows the history of commits under the cursor in popup window
Plug 'mhinz/vim-signify'                                           " uses the sign column to indicate added, modified and removed lines
Plug 'tpope/vim-abolish'                                           " mostly for better find and replace eg :%s/{S,s}ome/{O,o}ther/g
Plug 'airblade/vim-rooter'                                         " set working directory
Plug 'junegunn/vim-easy-align'                                     " easy align by char eg gaipa=
Plug 'cohama/lexima.vim'                                           " Auto close parentheses
Plug 'tpope/vim-surround'                                          " delete, change and add such surroundings (parentheses, brackets, quotes etc) in pairs
Plug 'tpope/vim-unimpaired'                                        " useful mappings
Plug 'tpope/vim-repeat'                                            " better . command
Plug 'michaeljsmith/vim-indent-object'                             " text object by indentation level
Plug 'kana/vim-textobj-user'                                       " create your own text objects
Plug 'kana/vim-textobj-entire'                                     " text object entire file
Plug 'kana/vim-textobj-datetime'                                   " ext objects for date and time
Plug 'kana/vim-textobj-indent'                                     " ext object for indentation
Plug 'kana/vim-textobj-line'                                       " ext object for line
Plug 'glts/vim-textobj-indblock'                                   " ext object of indentation whitespace
Plug 'tpope/vim-speeddating'                                       " use CTRL-A/CTRL-X to increment dates, times, and more
Plug 'wellle/targets.vim'                                          " additional text objects like cin) da, etc.
Plug 'terryma/vim-expand-region'                                   " easily expand region eg visual highlight
Plug 'tpope/vim-rsi'                                               " Readline key bindings in insert and command line mode
Plug 'editorconfig/editorconfig-vim'                               " Acept editor config file
Plug 'kshenoy/vim-signature'                                       " place, toggle and display marks
Plug 'vim-scripts/VisIncr'                                         " making a column of increasing or decreasing numbers, dates, or daynames
Plug 'tpope/vim-commentary'                                        " easyli toggle lines as comments
Plug 'vim-scripts/BufOnly.vim'                                     " close any other buffers
Plug 'moll/vim-bbye'                                               " delete buffers without closing your windows
Plug 'vim-scripts/LargeFile'                                       " disables certain features of vim for large files
Plug 'farmergreg/vim-lastplace'                                    " reopen files where you left off
Plug 'tpope/vim-dispatch'                                          " async vim dispatcher
Plug 'skywind3000/asyncrun.vim'                                    " Runs commands asynchronosuly using new APIs in Vim 8 and NeoVim
Plug 'janko-m/vim-test'                                            " run any test
Plug 'diepm/vim-rest-console'                                      " REST console
Plug 'ConradIrwin/vim-bracketed-paste'                             " transparent pasting into vim
Plug 'chrisbra/Recover.vim'                                        " Show differences for recovered files
Plug 'mhinz/vim-startify'                                          " A fancy start screen for Vim
Plug 'romainl/vim-cool'                                            " disables search highlighting when you are done searching and re-enables it when you search again.
Plug 'AndrewRadev/switch.vim'                                      " switch segments of text with predefined replacements
Plug 'junegunn/vim-peekaboo'                                       " Peekaboo extends \" and @ in normal mode and <CTRL-R> in insert mode so you can see the contents of the registers.
Plug 'bogado/file-line'                                            " opening a file in a given line
Plug 'axelf4/vim-strip-trailing-whitespace'                        " removes trailing whitespace
Plug 'honza/vim-snippets'                                          " great snippets collection

let g:coc_global_extensions = [
  \ 'coc-css',
  \ 'coc-emmet',
  \ 'coc-emoji',
  \ 'coc-go',
  \ 'coc-highlight',
  \ 'coc-html',
  \ 'coc-json',
  \ 'coc-lists',
  \ 'coc-lua',
  \ 'coc-phpls',
  \ 'coc-rls',
  \ 'coc-snippets',
  \ 'coc-solargraph',
  \ 'coc-tag',
  \ 'coc-tsserver',
  \ 'coc-ultisnips',
  \ 'coc-vetur'
  \ ]
if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif
if isdirectory('./node_modules') && isdirectory('./node_modules/stylelint')
  let g:coc_global_extensions += ['coc-stylelint']
endif
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'} " Intellisense engine

Plug 'liuchengxu/vista.vim'                                        " View and search LSP symbols, tags in Vim/NeoVim.
Plug 'vim-ruby/vim-ruby'                                           " help vim understand ruby, motions textobjects etc
Plug 'tpope/vim-rake'                                              " rake wraper
Plug 'tpope/vim-rails'                                             " rails helpers, navigation etc
Plug 'tpope/vim-projectionist'                                     " granular project configuration
Plug 'keith/rspec.vim'                                             " Better rspec syntax highlighting
Plug 'sunaku/vim-ruby-minitest'                                    " syntax and completion for ruby minitest
Plug 'nelstrom/vim-textobj-rubyblock'                              " ruby textobject
Plug 'tpope/vim-bundler'                                           " bundler helpers
" Plug 'sbdchd/neoformat'                                            " uses a variety of formatters for many filetypes
Plug 'modille/groovy.vim'                                          " Custom vim indenting and syntax highlighting for Groovy
Plug 'elixir-lang/vim-elixir'                                      " elixir support
Plug 'edkolev/erlang-motions.vim'                                  " Motions and text objects for erlang
Plug 'jimenezrick/vimerl'                                          " The Erlang plugin for Vim.
Plug 'rust-lang/rust.vim'                                          " Vim configuration for Rust
Plug 'arzg/vim-rust-syntax-ext'                                    " enhances Rust syntax highlighting
Plug 'tpope/vim-haml'                                              " runtime files for Haml, Sass, and SCSS
Plug 'slim-template/vim-slim'                                      " slim syntax highlighting
Plug 'joukevandermaas/vim-ember-hbs'
Plug 'tpope/vim-markdown'
Plug 'mattn/emmet-vim'
Plug 'tmux-plugins/vim-tmux'
Plug 'magicalbanana/sql-syntax-vim'
Plug 'kylef/apiblueprint.vim'
Plug 'M4R7iNP/vim-inky'
Plug 'neomake/neomake'                                             " syntax checker
Plug 'kchmck/vim-coffee-script'
Plug 'othree/html5.vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'tpope/vim-dotenv'                                            " Basic support for .env and Procfile
Plug 'kewah/vim-stylefmt'                                          " [S]CSS formatter
Plug 'WolfgangMehner/bash-support'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'HerringtonDarkholme/yats.vim'
Plug 'ElmCast/elm-vim'
Plug 'Shougo/neomru.vim'
Plug 'junegunn/fzf', { 'do': './install --all' }                   " general-purpose command-line fuzzy finder
Plug 'rlisowski/fzf-preview.vim'                                   " fork of 'yuki-ycino/fzf-preview.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'andymass/vim-matchup'                                        " % behavior
Plug 'dockyard/vim-easydir'                                        " simple way to create, edit and save files and directories
Plug 'christoomey/vim-tmux-navigator'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'voldikss/vim-floaterm'                                       " Use neovim terminal in the floating window.
Plug 'tpope/vim-vinegar'                                           " improwments for netrw
Plug 'scrooloose/nerdtree'                                         " project tree navigation window
Plug 'tpope/vim-dadbod'                                            " interacting with databases
Plug 'justinmk/vim-dirvish'                                        " Directory viewer for Vim 
Plug 'RRethy/vim-illuminate'                                       " highlighting other uses of the current word
Plug 't9md/vim-textmanip'                                          " easy text manupilation
Plug 'sedm0784/vim-you-autocorrect'                                " replacing spelling mistakes and typos as you type
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'hsanson/vim-openapi'                                         " Detect OpenApi 3 (YAML) files from its contents and sets openapi filetype.
Plug 'xavierchow/vim-swagger-preview'                              " previewing swagger/openAPI spec in Chrome with swagger-ui.
Plug 'mustache/vim-mustache-handlebars'                            " vim plugin for working with mustache and handlebars templates
Plug 'cespare/vim-toml'                                            " Vim syntax for TOML.
Plug 'digitaltoad/vim-pug'                                         " https://pugjs.org/api/getting-started.html
Plug 'dNitro/vim-pug-complete'


Plug 'rlisowski/vim_plugins_settings'
Plug 'rlisowski/vim_core_settings'

" ---------------
" GRAVEYARD
" ---------------

" Plug 'katono/rogue.vim'                                              " Roogue like vim game
" Plug 'Yggdroot/indentLine'                                           " shiw indentation with neat lines
" Plug 'lukas-reineke/indent-blankline.nvim'                           " Indent Blankline
" Plug 'sjl/gundo.vim'                                                 " undo view
" Plug 'drmikehenry/vim-fontsize'                                      " adjust quickly font size
" Plug 'airblade/vim-gitgutter'                                        " mark changed lines in sign column
" Plug 'gregsexton/gitv'                                               " gitk clone aka repository viewer
" Plug 'AndrewRadev/splitjoin.vim'                                     " easyli split/join ruby hashmap, json, javascript object
" Plug 'tpope/vim-obsession'                                           " save/restore vim session
" Plug 'dhruvasagar/vim-prosession'                                    " handle sessions like a pro requires vim-obsession
" Plug 'godlygeek/tabular'                                             " easy align by char
" Plug 'Raimondi/delimitMate'                                          " automatically close parentheses
" Plug 'jiangmiao/auto-pairs'                                          " Insert or delete brackets, parens, quotes in pair.
" Plug 'AndrewRadev/sideways.vim'                                      " move the item under the cursor left or right
" Plug 'tpope/vim-endwise'                                             " end certain structures automatically
" Plug 'tpope/vim-sleuth'                                              " keep shiftwidth and expandtab as in other file in the project
" Plug 'tpope/vim-eunuch'                                              " sugar for the UNIX shell commands
" Plug 'mrmargolis/dogmatic.vim'                                       " disable arrows
" Plug 'easymotion/vim-easymotion'                                     " simpler way to use some motions
" Plug 'ap/vim-buftabline'                                             " buffer list that lives in the tabline
" Plug 'vim-scripts/SyntaxRange'                                       " syntax highlight for region, required by vimdeck
" Plug 'EinfachToll/DidYouMean'                                        " ask if I misspelled filename
" Plug 'Z1MM32M4N/vim-superman'                                        " man pages in vim
" Plug 'edkolev/tmuxline.vim'                                          " generate tmux status line from vim
" Plug 'szw/vim-maximizer'                                             " maximize current window on demand
" Plug 'joonty/vdebug'                                                 " debug with vim
" Plug 'ashisha/image.vim'                                             " image preview
" Plug 'haya14busa/incsearch.vim'
" Plug 'wellle/visual-split.vim'                                       " Vim plugin to control splits with visual selections or text objects
" Plug 'unblevable/quick-scope'                                        " Lightning fast left-right movement in Vim
" Plug 'mhinz/vim-randomtag'                                           " Jump to random Vim documentation
" Plug 'sk1418/Join'                                                   " a better (hopefully) :Join command in vim
" Plug 'kassio/neoterm'                                                " Use the same terminal for everything.
" Plug 'wincent/terminus'                                              " Enhanced terminal integration for Vim
" Plug 'wincent/loupe'                                                 " Enhanced in-file search for Vim
" Plug 'kana/vim-submode'                                              " Create your own submodes
" Plug 'xolox/vim-misc'
" Plug 'xolox/vim-notes'                                               " Take notes in vim
" Plug 'vimwiki/vimwiki'                                               " A Personal Wiki For Vim
" Plug 't9md/vim-choosewin'                                            " display-pane feature, which enables you to choose a window interactively
" Plug 'andymass/vim-tradewinds'                                       " The missing window movement.
" Plug 'chrisbra/unicode.vim'                                          " handling of unicode and digraphs chars
" Plug 'kana/vim-smartword'                                            " provide {motion}s on |word|s which are smarter
" Plug 'ktonga/vim-follow-my-lead'                                     " showing all your <Leader> mappings
" Plug 'rickhowe/diffchar.vim'
" Plug 'jszakmeister/vim-togglecursor'                                 " Change the cursor when entering mode
" Plug 'AndrewRadev/deleft.vim'                                        " Delete a wrapping if-clause, try-catch block, etc. and shift left.
" Plug 'machakann/vim-highlightedyank'                                 " Make the yanked region apparent!
" Plug 'Konfekt/FastFold'                                              " Make vim fold fast again
" Plug 'vim-scripts/Mark--Karkat'                                      " highlight several words in different colors simultaneously
" Plug 'thiagoalessio/rainbow_levels.vim'                              " highlights your code by indentation level
" Plug 'tpope/vim-db'                                                  "
" Plug 'wannesm/wmgraphviz.vim'                                        " Vim plugin for Graphviz dot.
" Plug 'dhruvasagar/vim-zoom'                                          " A simple plugin to toggle zoom of current window within the current tab.
" Plug 'svermeulen/vim-cutlass'                                        " overrides the delete operations to actually just delete
" Plug 'svermeulen/vim-yoink'                                          " automatically maintain a history of yanks
" Plug 'svermeulen/vim-subversive'                                     " easy to perform quick substitutions
" Plug 'kamykn/spelunker.vim'                                          " spell check for code
" Plug 'terryma/vim-multiple-cursors'                                  " awesome multiple selection feature
" Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] } " displays available keybindings
" Plug 'wellle/context.vim'                                            " shows the context of the currently visible buffer
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }              " code-completion engine
" Plug 'zxqfl/tabnine-vim'                                             " code-completion engine
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
" Plug 'takkii/Bignyanco'
" Plug 'Shougo/echodoc.vim'
" Plug 'matthewsimo/angular-vim-snippets'                              " broken
" Plug 'ecomba/vim-ruby-refactoring'                                   " refactoring helpers
" Plug 't9md/vim-ruby-xmpfilter'                                       " display result in comment
" Plug 'danchoi/ri.vim'                                                " search and navigate Ruby library and gem documentation
" Plug 'Chiel92/vim-autoformat'                                        " Format code
" Plug 'splattael/rufo-vim'                                            " Format Ruby code
" Plug 'racer-rust/vim-racer'                                          " Rust code completion and navigation
" Plug 'gabrielelana/vim-markdown'                                     " environment to create Markdown files with a syntax highlight
" Plug 'suan/vim-instant-markdown'
" Plug 'rstacruz/sparkup'                                              " write html faster
" Plug 'metakirby5/codi.vim'                                           " The interactive scratchpad
" Plug 'dense-analysis/ale'                                            " Asynchronous Lint Engine
" Plug 'vim-syntastic/syntastic'                                       " syntax checker
" Plug 'mmalecki/vim-node.js'                                          " File type detect plugin for vim which detects node.js shebang
" Plug 'pangloss/vim-javascript'                                       " provides syntax and indent for javascript
" Plug 'ianks/vim-tsx'
" Plug 'burnettk/vim-angular'
" Plug 'jelera/vim-javascript-syntax'
" Plug 'isRuslan/vim-es6'
" Plug 'othree/javascript-libraries-syntax.vim'
" Plug 'othree/xml.vim'
" Plug 'rodjek/vim-puppet'
" Plug 'vim-scripts/lua-support'
" Plug 'itspriddle/vim-jquery'
" Plug 'groenewege/vim-less'
" Plug 'ap/vim-css-color'
" Plug 'hail2u/vim-css3-syntax'
" Plug 'chrisbra/csv.vim'                                              " CSV formatter
" Plug 'ekalinin/Dockerfile.vim'                                       " docker file syntax
" Plug 'tmatilai/gitolite.vim'                                         " gitolite syntax
" Plug 'millermedeiros/vim-esformatter'                                " ES formatter
" Plug 'mxw/vim-jsx'
" Plug 'aklt/plantuml-syntax'                                          " PlantUML syntax
" Plug 'scrooloose/vim-slumlord'                                       " PlantUML live preview
" Plug 'posva/vim-vue'
" Plug 'ternjs/tern_for_vim', { 'do': 'yarn' }
" Plug 'leafgarland/typescript-vim'
" Plug 'peitalin/vim-jsx-typescript'
" Plug 'StanAngeloff/php.vim'
" Plug 'ctrlpvim/ctrlp.vim'                                            " find file/buffer
" Plug 'FelikZ/ctrlp-py-matcher'                                       " Fast vim CtrlP matcher based on python
" Plug 'junegunn/fzf.vim'
" Plug 'yuki-ycino/fzf-preview.vim'
" Plug 'vim-ctrlspace/vim-ctrlspace'                                   " list open buffers
" Plug 'lukaszkorecki/CoffeeTags'
" Plug 'ludovicchabant/vim-gutentags'                                  " takes care of the much needed management of tags files
" Plug 'Chiel92/vim-autoformat'                                        " Format code with one button press.
" Plug 'rking/ag.vim'                                                  " search plugin
" Plug 'gabesoft/vim-ags'                                              " Silver searcher (AG) plugin
" Plug 'wincent/ferret'                                                " multi-file search
" Plug 'vim-scripts/matchit.zip'                                       " % behavior
" Plug 'yuttie/comfortable-motion.vim'                                 " physics-based smooth scrolling
" Plug 'garyburd/go-explorer'
" Plug 'jodosha/vim-godebug'
" Plug 'majutsushi/tagbar'                                             " navigate by tags
" Plug 'chrisbra/vim-diff-enhanced'                                    " creating better diffs (sometimes)
" Plug 'MattesGroeger/vim-bookmarks'                                   " bookmark plugin
" Plug 'voldikss/vim-codelf'                                           " searching useful variable names from CODELF
" Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }        " modern generic interactive finder and dispatcher,
" Plug 'vim-scripts/mru.vim'                                           " most recent used files
" Plug 'junegunn/goyo.vim'                                             " Distraction-free writing in Vim.
" Plug 'DataWraith/auto_mkdir'                                         " save files into directories that do not exist yet
" Plug 'haorenW1025/floatLf-nvim'                                      " use lf(the file manager) easily in floating window
" Plug 'git-time-metric/gtm-vim-plugin'                                " automatically track time spent reading and working on code
" Plug 'alok/notational-fzf-vim'                                       " Notational Velocity - note-taking app
" Plug 'Shougo/neosnippet.vim'
" Plug 'Shougo/neosnippet-snippets'
" Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }            " file explorer
" Plug 'SirVer/ultisnips'                                              " snippets engine

call plug#end()
