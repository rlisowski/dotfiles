# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

# Basic directory operations
alias pwd=' pwd'
# alias .=' pwd'
alias ...='cd ../..'
alias -- -='cd -'

# date
alias now='date +%Y-%m-%d_%H:%M:%S'

# Super user
alias _='sudo'

# Show history
alias history='fc -l 1'

# List direcory contents
alias afind='ack-grep -il'


#Aliases for improved directory listings
#The --color=tty option shows items in different colors according to their type.
#For example, directories are blue, executable files are green, symlinks are cyan, etc.
#The -F option appends a symbol after entries to indicate their types.
#You might not like both options at the same time.
alias ls='ls -F' #regular ls
alias l.='ls -dF .[a-zA-Z0-9]*' #only show dotfiles
alias ll='ls -lhF' #long listing
alias lsa='ls -lah'
alias la='ls -A'
alias l='ls -CF'
alias sl='ls' # often screw this up

#Make these commands ask before clobbering a file. Use -F to override.
#alias rm="rm -i"
#alias cp="cp -i"
alias mv="mv -i"

#Use human-readable filesizes
alias du="du -hs"
alias df="df -h"

#Miscellaneous
alias j=jobs
alias cd..="cd .." #work around a common typo

#ruby aliases
# alias rdoc="rdoc -N -U -c utf-8 -n README -f html -U"
# alias rdoc_a="rdoc -N -d -c utf-8"

#touch passenger
alias tpass='touch tmp/restart.txt'

#
alias rmsvn='find . -type d -name '.svn' -exec rm -rf {} \;'
alias rmgit='find . -name '.git' -exec rm -rf {} \;'

#administration
alias ports='sudo netstat -pant'

# git
alias gst='git st -sb'

# rails
alias remigrate='rake db:migrate && rake db:migrate:redo && rake db:schema:dump db:test:prepare'

# npm
alias npm-exec='PATH=$(npm bin):$PATH'

# https://github.com/carlhuda/janus/wiki/Rvm
vim() { rvm system do /usr/local/bin/vim $@ }

vm() { vim $(git status --short | awk ' { print $2 } '); }
vc() { vim $(git show "${1:-HEAD}" --name-only --oneline --no-commit-id | sed '$d'); }

nvm() { nvim $(git status --short | awk ' { print $2 } '); }
nvc() { nvim $(git show "${1:-HEAD}" --name-only --oneline --no-commit-id | sed '$d'); }

codi() {
  local syntax="${1:-python}"
  shift
  vim -c \
    "let g:startify_disable_at_vimenter = 1 |\
    set bt=nofile ls=0 noru nonu nornu |\
    hi ColorColumn ctermbg=NONE |\
    hi VertSplit ctermbg=NONE |\
    hi NonText ctermfg=0 |\
    Codi $syntax" "$@"
}

# tmux
# alias tmux="TERM=screen-256color-bce tmux"
# t() { tmux attach-session -t $@ || tmux new-session -s $@ -c `pwd` }
# alias htop='TERM=screen htop'
alias tmux='tmux -2'  # for 256color
alias tmux='tmux -u'  # to get rid of unicode rendering problem

# zsh help
zman() {
  PAGER="less -g -s '+/^       "$1"'" man zshall
}

# cd history
DIRSTACKSIZE=9
DIRSTACKFILE=~/.zdirs
if [[ -f $DIRSTACKFILE ]] && [[ $#dirstack -eq 0 ]]; then
  dirstack=( ${(f)"$(< $DIRSTACKFILE)"} )
  [[ -d $dirstack[1] ]] && cd $dirstack[1] && cd $OLDPWD
fi
chpwd() {
  print -l $PWD ${(u)dirstack} >$DIRSTACKFILE
}

