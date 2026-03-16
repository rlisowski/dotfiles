call plug#begin('~/.vim/plugged')

Plug 'dstein64/vim-startuptime'                                    " profiling Vim's startup time

Plug 'tomtom/tlib_vim'
Plug 'vim-scripts/L9'

Plug 'nvim-lualine/lualine.nvim'
Plug 'mbbill/undotree'                                             " undo view
Plug 'tpope/vim-git'                                               " git helpers, commit msg, diff etc
Plug 'rhysd/committia.vim'                                         " More Pleasant Editing on Commit Message
Plug 'tpope/vim-fugitive'                                          " git wrapper
Plug 'tpope/vim-rhubarb'                                           " Enables :Gbrowse from fugitive.vim to open GitHub URLs.
Plug 'rbong/vim-flog'                                              " A lightweight and powerful git branch viewer for vim.
Plug 'sindrets/diffview.nvim'                                      " Single tabpage interface for easily cycling through diffs for all modified files for any git rev.
Plug 'rhysd/git-messenger.vim'                                     " shows the history of commits under the cursor in popup window
Plug 'mhinz/vim-signify'                                           " uses the sign column to indicate added, modified and removed lines
Plug 'tpope/vim-abolish'                                           " mostly for better find and replace eg :%s/{S,s}ome/{O,o}ther/g
Plug 'airblade/vim-rooter'                                         " set working directory
Plug 'junegunn/vim-easy-align'                                     " easy align by char eg gaipa=
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
" Plug 'vim-scripts/LargeFile'                                       " disables certain features of vim for large files
Plug 'farmergreg/vim-lastplace'                                    " reopen files where you left off
Plug 'tpope/vim-dispatch'                                          " async vim dispatcher
Plug 'skywind3000/asyncrun.vim'                                    " Runs commands asynchronosuly using new APIs in Vim 8 and NeoVim
Plug 'janko-m/vim-test'                                            " run any test
Plug 'ConradIrwin/vim-bracketed-paste'                             " transparent pasting into vim
Plug 'chrisbra/Recover.vim'                                        " Show differences for recovered files
Plug 'romainl/vim-cool'                                            " disables search highlighting when you are done searching and re-enables it when you search again.
Plug 'AndrewRadev/switch.vim'                                      " switch segments of text with predefined replacements
Plug 'junegunn/vim-peekaboo'                                       " Peekaboo extends \" and @ in normal mode and <CTRL-R> in insert mode so you can see the contents of the registers.
Plug 'bogado/file-line'                                            " opening a file in a given line
Plug 'axelf4/vim-strip-trailing-whitespace'                        " removes trailing whitespace
Plug 'liuchengxu/vista.vim'                                        " View and search LSP symbols, tags in Vim/NeoVim.
Plug 'vim-ruby/vim-ruby'                                           " help vim understand ruby, motions textobjects etc
Plug 'tpope/vim-rake'                                              " rake wraper
Plug 'tpope/vim-rails'                                             " rails helpers, navigation etc
Plug 'tpope/vim-projectionist'                                     " granular project configuration
Plug 'keith/rspec.vim'                                             " Better rspec syntax highlighting
Plug 'sunaku/vim-ruby-minitest'                                    " syntax and completion for ruby minitest
Plug 'nelstrom/vim-textobj-rubyblock'                              " ruby textobject
Plug 'tpope/vim-bundler'                                           " bundler helpers
Plug 'modille/groovy.vim'                                          " Custom vim indenting and syntax highlighting for Groovy
Plug 'elixir-lang/vim-elixir'                                      " elixir support
Plug 'edkolev/erlang-motions.vim'                                  " Motions and text objects for erlang
Plug 'jimenezrick/vimerl'                                          " The Erlang plugin for Vim.
Plug 'rust-lang/rust.vim'                                          " Vim configuration for Rust
Plug 'arzg/vim-rust-syntax-ext'                                    " enhances Rust syntax highlighting
Plug 'tmux-plugins/vim-tmux'
Plug 'kylef/apiblueprint.vim'
Plug 'M4R7iNP/vim-inky'
Plug 'othree/html5.vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'tpope/vim-dotenv'                                            " Basic support for .env and Procfile
Plug 'WolfgangMehner/bash-support'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'HerringtonDarkholme/yats.vim'
Plug 'ElmCast/elm-vim'
Plug 'Shougo/neomru.vim'
Plug 'junegunn/fzf', { 'do': './install --all' }                   " general-purpose command-line fuzzy finder
Plug 'dyng/ctrlsf.vim'
Plug 'andymass/vim-matchup'                                        " % behavior
Plug 'dockyard/vim-easydir'                                        " simple way to create, edit and save files and directories
Plug 'christoomey/vim-tmux-navigator'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'voldikss/vim-floaterm'                                       " Use neovim terminal in the floating window.
Plug 'nvim-tree/nvim-web-devicons'                                " for file icons
Plug 'nvim-tree/nvim-tree.lua'                                    " project tree navigation window
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
Plug 'pearofducks/ansible-vim'                                     " syntax plugin for Ansible 2.x
Plug 'OXY2DEV/markview.nvim'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'                               " fuzzy finder over lists
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
Plug 'nvim-telescope/telescope-ui-select.nvim'
Plug 'folke/todo-comments.nvim'
Plug 'folke/trouble.nvim'
" Plug 'folke/which-key.nvim'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'glepnir/lspsaga.nvim'
Plug 'neovim/nvim-lspconfig'                                       " A collection of common configurations for Neovim's built-in language server client.
Plug 'onsails/lspkind.nvim'
Plug 'zbirenbaum/copilot.lua'
Plug 'zbirenbaum/copilot-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/nvim-cmp'
Plug 'rafamadriz/friendly-snippets'
Plug 'andythigpen/nvim-coverage'
Plug 'stevearc/conform.nvim'
Plug 'johmsalas/text-case.nvim'
Plug 'ravitemer/mcphub.nvim', { 'do': 'npm install -g mcp-hub@latest' }

Plug 'stevearc/dressing.nvim'
Plug 'MunifTanjim/nui.nvim'
Plug 'MeanderingProgrammer/render-markdown.nvim'
Plug 'HakonHarnes/img-clip.nvim'
Plug 'yetone/avante.nvim', { 'branch': 'main', 'do': 'make' }

Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'karb94/neoscroll.nvim'

Plug 'rlisowski/vim_plugins_settings'
Plug 'rlisowski/vim_core_settings'

Plug 'folke/snacks.nvim'
Plug 'ribru17/bamboo.nvim'

call plug#end()

function! ToPascalCase(s)
    return join(map(split(a:s, '/'), {_, val -> substitute(toupper(val[0]), '[a-z]', '\u&', 'g') . substitute(val[1:], '_\([a-z]\)', '\u\1', 'g')}), '::')
endfunction
