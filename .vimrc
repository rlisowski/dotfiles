" sources:
" https://github.com/tpope/tpope/blob/master/.vimrc
" ftp://ftp.vim.org/pub/vim/doc/book/vimbook-OPL.pdf
"
" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
	finish
endif
let mapleader = ","
if has("eval")
	let g:pathogen_disabled = ['minibufexpl', 'nerdcommenter'] " disable some plugins
endif
silent! call pathogen#runtime_append_all_bundles()
" silent! call pathogen#runtime_prepend_subdirectories("~/src/vim/bundle")
set nocompatible
set autoindent
set autowrite " Automatically save before commands like :next and :make
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set backupskip+=*.tmp,crontab.* " do not make backup for this files
set backupdir=./.backup,.,/tmp " where to put backup files
set directory=./.backup,.,/tmp " directory to place swap files in
if has("balloon_eval") && has("unix")
	set ballooneval
endif
if has("vms")
	set nobackup		" do not keep a backup file, use versions instead
else
	set backup		" keep a backup file
endif
if exists("&breakindent")
	set breakindent showbreak=+++
elseif has("gui_running")
	set showbreak=+++
endif
set cmdheight=1 " command line height
set complete-=i " Searching includes can be slow
set dictionary+=/usr/share/dict/words " dictionary
set display=lastline "
" Encoding
set encoding=utf8
if has("eval")
	let &fileencodings = substitute(&fileencodings,"latin2","cp1250","")
endif
set grepprg=ack\ -a\ -H\ --nocolor\ --nogroup
if has("eval")
	let &highlight = substitute(&highlight,'NonText','SpecialKey','g')
endif
set incsearch " Incremental search
set joinspaces " Put spaces between lines joined with the > command.
set laststatus=2 " Always show status line
set lazyredraw " Do not redraw the screen during macro execution.
set listchars=tab:▸\ ,eol:¬,trail:· " Define how list mode appears, Use the same symbols as TextMate for tabstops and EOLs
set modelines=5 " Debian likes to disable this, The number of lines at the top and bottom to look for modelines.
set mousemodel=popup " the right mouse button causes a small pop-up menu to appear
" set pastetoggle=<F2>
set scrolloff=1 " Number of lines to keep above or below the cursor.
set showcmd         " Show (partial) command in status line.
set showmatch       " Show matching brackets.
set smartcase       " Case insensitive searches become sensitive with capitals
set smarttab        " sw at the start of the line, sts everywhere else
if exists("+spelllang")
	set spelllang=en_us
endif
set splitbelow      " Split windows at bottom
set suffixes+=.dvi  " Lower priority in wildcards
set history=100 " keep 100 lines of command line history
set ruler " show the cursor position all the time
set timeoutlen=1200 " A little bit more time for macros
set ttimeoutlen=50  " Make Esc work faster
if v:version >= 700
	set viminfo=!,'20,<50,s10,h
endif
" set visualbell
set virtualedit=block
set wildmenu
set wildmode=longest:full,full
set wildignore+=*~
set winaltkeys=no
if v:version >= 600
	set autoread
	set foldmethod=marker " The kind of folding used
	" set printoptions=paper:letter
set sidescrolloff=5
	"set mouse=nvi
endif
" Plugin Settings {{{2
if has("eval")
	let g:is_bash = 1
	" let g:lisp_rainbow = 1
	" let g:rubyindent_match_parentheses = 0
	let g:ruby_minlines = 500
	let g:rubycomplete_buffer_loading = 1
	let g:rubycomplete_rails = 1
	let g:spellfile_URL = 'http://ftp.vim.org/vim/runtime/spell'
	" let g:EnhCommentifyUseAltKeys = 'Yes'
	" let g:EnhCommentifyBindInInsert = 'No'
	" let g:EnhCommentifyRespectIndent = 'Yes'
	" let g:miniBufExplForceSyntaxEnable = 1
	let g:NERDCreateDefaultMappings = 0
	let g:NERDSpaceDelims = 1
	let g:NERDShutUp = 1
	let g:NERDTreeHijackNetrw = 0
	let g:ragtag_global_maps = 1
	let g:space_disable_select_mode = 1
	let g:syntastic_enable_signs = 1
	let g:syntastic_auto_loc_list = 1
	" let g:VCSCommandDisableMappings = 1 " http://www.vim.org/scripts/script.php?script_id=90
	" let g:Tex_CompileRule_dvi = 'latex -interaction=nonstopmode -src-specials $*'
	" let g:Tex_SmartKeyQuote = 0
	" let g:showmarks_enable = has("gui_running") " http://www.vim.org/scripts/script.php?script_id=152
	let g:surround_{char2nr('-')} = "<% \r %>"
	let g:surround_{char2nr('=')} = "<%= \r %>"
	let g:surround_{char2nr('8')} = "/* \r */"
	let g:surround_{char2nr('s')} = " \r"
	let g:surround_{char2nr('^')} = "/^\r$/"
	let g:surround_indent = 1
	" let g:dbext_default_history_file = "/tmp/dbext_sql_history.txt"
endif
" }}}2
function! OpenURL(url)
	if has("win32")
		exe "!start cmd /cstart /b ".a:url.""
	elseif $DISPLAY !~ '^\w'
		exe "silent !sensible-browser \"".a:url."\""
	else
		exe "silent !sensible-browser -T \"".a:url."\""
	endif
	redraw!
endfunction
command! -nargs=1 OpenURL :call OpenURL(<q-args>)
" open URL under cursor in browser
nnoremap gb :OpenURL <cfile><CR>
nnoremap gA :OpenURL http://www.answers.com/<cword><CR>
nnoremap gG :OpenURL http://www.google.com/search?q=<cword><CR>
nnoremap gD :OpenURL http://translate.google.com/\#auto\|pl\|<cword><CR>
nnoremap gW :OpenURL http://en.wikipedia.org/wiki/Special:Search?search=<cword><CR>
" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>
" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
	set mouse=a
endif
" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
	syntax on
	set hlsearch
endif
set textwidth=120
" Only do this part when compiled with support for autocommands.
if has("autocmd")
	" Enable file type detection.
	" Use the default filetype settings, so that mail gets 'tw' set to 72,
	" 'cindent' is on in C files, etc.
	" Also load indent files, to automatically do language-dependent indenting.
	filetype plugin indent on
	" Put these in an autocmd group, so that we can delete them easily.
	augroup vimrcEx
	au!
	" For all text files set 'textwidth'.
	autocmd FileType text setlocal textwidth=100
	" When editing a file, always jump to the last known cursor position.
	" Don't do it when the position is invalid or when inside an event handler
	" (happens when dropping a file on gvim).
	" Also don't do it when the mark is in the first line, that is the default
	" position when opening a file.
	autocmd BufReadPost *
		\ if line("'\"") > 1 && line("'\"") <= line("$") |
		\   exe "normal! g`\"" |
		\ endif
	augroup END
	augroup FTOptions " {{{2
		autocmd!
		autocmd FileType c,cpp,cs,java          setlocal ai et sta sw=4 sts=4 cin
		autocmd FileType sh,csh,tcsh,zsh        setlocal ai et sta sw=4 sts=4
		autocmd FileType tcl,perl,python        setlocal ai et sta sw=4 sts=4
		autocmd FileType javascript             setlocal ai et sta sw=2 sts=2 ts=2 cin isk+=$
		autocmd FileType php,aspperl,aspvbs,vb  setlocal ai et sta sw=4 sts=4
		autocmd FileType apache,sql,vbnet       setlocal ai et sta sw=4 sts=4
		autocmd FileType tex,css                setlocal ai et sta sw=2 sts=2
		autocmd FileType html,xhtml,wml,cf      setlocal ai et sta sw=2 sts=2
		autocmd FileType xml,xsd,xslt           setlocal ai et sta sw=2 sts=2 ts=2
		autocmd FileType eruby,yaml,ruby        setlocal ai et sta sw=2 sts=2
		autocmd FileType cucumber               setlocal ai et sta sw=2 sts=2 ts=2
		autocmd FileType text,txt,mail          setlocal ai com=fb:*,fb:-,n:>
		autocmd FileType sh,zsh,csh,tcsh        inoremap <silent> <buffer> <C-X>! #!/bin/<C-R>=&ft<CR>
		autocmd FileType perl,python,ruby       inoremap <silent> <buffer> <C-X>! #!/usr/bin/<C-R>=&ft<CR>
		autocmd FileType sh,zsh,csh,tcsh,perl,python,ruby imap <buffer> <C-X>& <C-X>!<Esc>o <C-U># $I<C-V>d$<Esc>o <C-U><C-X>^<Esc>o <C-U><C-G>u
		autocmd FileType c,cpp,cs,java,perl,javscript,php,aspperl,tex,css let b:surround_101 = "\r\n}"
		autocmd User     ragtag                 if &sw == 8 | setlocal sw=2 sts=2 ts=2 | endif
		autocmd FileType aspvbs,vbnet setlocal comments=sr:'\ -,mb:'\ \ ,el:'\ \ ,:',b:rem formatoptions=crq
		autocmd FileType asp*         runtime! indent/html.vim
		autocmd FileType bst  setlocal ai sta sw=2 sts=2
		autocmd FileType cobol setlocal ai et sta sw=4 sts=4 tw=72 makeprg=cobc\ -x\ -Wall\ %
		autocmd FileType cs   silent! compiler cs | setlocal makeprg=gmcs\ %
		autocmd FileType scss,sass,css  silent! setlocal omnifunc=csscomplete#CompleteCSS
		autocmd FileType cucumber silent! compiler cucumber | imap <buffer><expr> <Tab> pumvisible() ? "\<C-N>" : (CucumberComplete(1,'') >= 0 ? "\<C-X>\<C-O>" : (getline('.') =~ '\S' ? ' ' : "\<C-I>"))
		autocmd FileType git,gitcommit setlocal foldmethod=syntax foldlevel=1
		autocmd FileType gitcommit setlocal spell
		autocmd FileType gitrebase nnoremap <buffer> S :Cycle<CR>
		autocmd FileType help setlocal ai fo+=2n | silent! setlocal nospell
		autocmd FileType help nnoremap <silent><buffer> q :q<CR>
		autocmd FileType html setlocal iskeyword+=~
		autocmd FileType java silent! compiler javac | setlocal makeprg=javac\ %
		autocmd FileType mail if getline(1) =~ '^[A-Za-z-]*:\|^From ' | exe 'norm gg}' |endif|silent! setlocal spell
		autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
		autocmd FileType perl silent! compiler perl
		autocmd FileType pdf  setlocal foldmethod=syntax foldlevel=1
		autocmd FileType ruby silent! compiler ruby | setlocal tw=79 isfname+=: makeprg=rake comments=:#\  | let &includeexpr = 'tolower(substitute(substitute('.&includeexpr.',"\\(\\u\\+\\)\\(\\u\\l\\)","\\1_\\2","g"),"\\(\\l\\|\\d\\)\\(\\u\\)","\\1_\\2","g"))' | imap <buffer> <C-Z> <CR>end<C-O>O
		autocmd BufNewFile,BufRead *.rss,*.atom setfiletype xml " Treat .rss files as XML
		autocmd BufNewFile,BufRead *.json setfiletype json
		autocmd BufNewFile,BufRead,FileType *.coffee,*.coffee.*,*Cakefile,*.coffeekup set filetype=coffee
		autocmd FileType coffee setlocal ai et sta sw=2 sts=2 ts=2
		autocmd FileType text,txt setlocal tw=78 linebreak nolist
		autocmd FileType tex  silent! compiler tex | setlocal makeprg=latex\ -interaction=nonstopmode\ % formatoptions+=l
		autocmd FileType tex if exists("*IMAP")|
			\ call IMAP('{}','{}',"tex")|
			\ call IMAP('[]','[]',"tex")|
			\ call IMAP('{{','{{',"tex")|
			\ call IMAP('$$','$$',"tex")|
			\ call IMAP('^^','^^',"tex")|
			\ call IMAP('::','::',"tex")|
			\ call IMAP('`/','`/',"tex")|
			\ call IMAP('`"\','`"\',"tex")|
		\ endif
		autocmd FileType vbnet        runtime! indent/vb.vim
		autocmd FileType vim  setlocal ai et sta sw=2 sts=2 keywordprg=:help | map! <buffer> <C-Z> <C-X><C-V>
		autocmd FileType * if exists("+omnifunc") && &omnifunc == "" | setlocal omnifunc=syntaxcomplete#Complete | endif
		autocmd FileType * if exists("+completefunc") && &completefunc == "" | setlocal completefunc=syntaxcomplete#Complete | endif
	augroup END "}}}2
	autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
else
	set autoindent		" always set autoindenting on
endif " has("autocmd")
" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
	command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
			\ | wincmd p | diffthis
endif
" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
syntax enable
set background=dark
colorscheme solarized
" font
"set guifont=consolas
set guifont=monaco
"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59
set list
set ts=2 sts=2 sw=2 noexpandtab
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
" nmap <F4> :g/^$/d<CR>
" work with windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" cotrol tabs
map <C-S-'> gt
map <C-S-'> gT
map <C-1> 1gt
map <C-2> 2gt
map <C-3> 3gt
map <C-4> 4gt
map <C-5> 5gt
map <C-6> 6gt
map <C-7> 7gt
map <C-8> 8gt
map <C-9> 9gt
map <C-0> :tablast<CR>
" selection and tabs
nmap <C-'> <<
nmap <C-'> >>
nmap <C-'> gv<
nmap <C-'> gv>
"------------------------------------ buffers
" Switch between buffers
noremap <tab> :bn<CR>
noremap <S-tab> :bp<CR>
" Close buffer
nmap <leader>d :bprevious<CR>:bdelete #<CR>
" Close all buffers
nmap <leader>D :bufdo bd<CR>
" Switch between last two buffers
nnoremap <leader><leader> <C-^>

" NERD_tree
nmap <C-p> :NERDTreeToggle<CR>
" allow leave edited buffor without prompt
" set hidden
" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:
" FuzzyFinder
nnoremap <S-f> :FufFile<CR>
nnoremap <C-f> :FufCoverageFile<CR>
" move lines
nnoremap <A-j> :m+<CR>==
nnoremap <A-k> :m-2<CR>==
inoremap <A-j> <Esc>:m+<CR>==gi
inoremap <A-k> <Esc>:m-2<CR>==gi
vnoremap <A-j> :m'>+<CR>gv=gv
vnoremap <A-k> :m-2<CR>gv=gv
" show lines number
set nu
" unix end of line
set ff=unix
" taglist
" nnoremap <silent> <F4> :TagbarToggle<CR>
nnoremap <silent> <F4> :TagbarOpenAutoClose<CR>
" rsense
let g:rsenseHome = "/home/rlisowski/.vim/rsense"
" let g:rsenseUseOmniFunc = 1
" statusline
"statusline setup
set statusline=%f       "tail of the filename
"Git
"set statusline+=[%{GitBranch()}]
set statusline+=%{fugitive#statusline()}
"RVM
set statusline+=%{exists('g:loaded_rvm')?rvm#statusline():''}
"display a warning if fileformat isnt unix
set statusline+=%#warningmsg#
set statusline+=%{&ff!='unix'?'['.&ff.']':''}
set statusline+=%*
"Display a warning if file encoding isnt utf-8
set statusline+=%#warningmsg#
set statusline+=%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}
set statusline+=%*
"set statusline+=%h      "help file flag
"set statusline+=%y      "filetype
"set statusline+=%r      "read only flag
"set statusline+=%m      "modified flag
"display a warning if &et is wrong, or we have mixed-indenting
set statusline+=%#error#
set statusline+=%{StatuslineTabWarning()}
set statusline+=%*
"
set statusline+=%{StatuslineTrailingSpaceWarning()}
"
set statusline+=%{StatuslineLongLineWarning()}
" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"display a warning if &paste is set
"set statusline+=%#error#
"set statusline+=%{&paste?'[paste]':''}
"set statusline+=%*
set statusline+=%=      "left/right separator
"set statusline+=%{StatuslineCurrentHighlight()}\ \ "current highlight
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set laststatus=2
" function
"return '[\s]' if trailing white space is detected
"return '' otherwise
function! StatuslineTrailingSpaceWarning()
	if !exists("b:statusline_trailing_space_warning")
		if search('\s\+$', 'nw') != 0
			let b:statusline_trailing_space_warning = '[\s]'
		else
			let b:statusline_trailing_space_warning = ''
		endif
	endif
	return b:statusline_trailing_space_warning
endfunction
"return the syntax highlight group under the cursor ''
function! StatuslineCurrentHighlight()
	let name = synIDattr(synID(line('.'),col('.'),1),'name')
	if name == ''
		return ''
	else
		return '[' . name . ']'
	endif
endfunction
"recalculate the tab warning flag when idle and after writing
autocmd cursorhold,bufwritepost * unlet! b:statusline_tab_warning
"return '[&et]' if &et is set wrong
"return '[mixed-indenting]' if spaces and tabs are used to indent
"return an empty string if everything is fine
function! StatuslineTabWarning()
	if !exists("b:statusline_tab_warning")
		let tabs = search('^\t', 'nw') != 0
		let spaces = search('^ ', 'nw') != 0
		if tabs && spaces
			let b:statusline_tab_warning =  '[mixed-indenting]'
		elseif (spaces && !&et) || (tabs && &et)
			let b:statusline_tab_warning = '[&et]'
		else
			let b:statusline_tab_warning = ''
		endif
	endif
	return b:statusline_tab_warning
endfunction
"return a warning for "long lines" where "long" is either &textwidth or 80 (if
"no &textwidth is set)
"
"return '' if no long lines
"return '[#x,my,$z] if long lines are found, were x is the number of long
"lines, y is the median length of the long lines and z is the length of the
"longest line
function! StatuslineLongLineWarning()
	if !exists("b:statusline_long_line_warning")
		let long_line_lens = s:LongLines()
		if len(long_line_lens) > 0
			let b:statusline_long_line_warning = "[" .
				\ '#' . len(long_line_lens) . "," .
				\ 'm' . s:Median(long_line_lens) . "," .
				\ '$' . max(long_line_lens) . "]"
		else
			let b:statusline_long_line_warning = ""
		endif
	endif
	return b:statusline_long_line_warning
endfunction
"return a list containing the lengths of the long lines in this buffer
function! s:LongLines()
	let threshold = (&tw ? &tw : 80)
	let spaces = repeat(" ", &ts)
	let long_line_lens = []
	let i = 1
	while i <= line("$")
		let len = strlen(substitute(getline(i), '\t', spaces, 'g'))
		if len > threshold
			call add(long_line_lens, len)
		endif
		let i += 1
	endwhile
	return long_line_lens
endfunction
"find the median of the given array of numbers
function! s:Median(nums)
	let nums = sort(a:nums)
	let l = len(nums)
	if l % 2 == 1
		let i = (l-1) / 2
		return nums[i]
	else
		return (nums[l/2] + nums[(l/2)-1]) / 2
	endif
endfunction

