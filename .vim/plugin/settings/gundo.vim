nnoremap ,u :GundoToggle<CR>
" open on the right so as not to compete with the nerdtree
let g:gundo_right = 1
" a little wider for wider screens
let g:gundo_width = 60
let g:gundo_preview_bottom = 1
if exists("+undofile")
  " undofile - This allows you to use undos after exiting and restarting
  " This, like swap and backups, uses .vim-undo first, then ~/.vim/undo
  " :help undo-persistence
  " This is only present in 7.3+
  if isdirectory($HOME . '/.vim/undo') == 0
    :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
  endif
  set undodir=./.vim-undo//
  set undodir+=~/.vim/undo//
  set undofile
endif
