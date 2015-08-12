if v:progname =~? "evim"
  finish
endif
let mapleader = ","

set nocompatible               " be iMproved
set hidden
filetype off                   " required!

if filereadable($HOME."/.vim/plugins.vim")
  source $HOME/.vim/plugins.vim
endif

if filereadable($HOME."/.vimrc.local")
  source $HOME/.vimrc.local
endif
