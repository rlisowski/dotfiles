# zmodload zsh/zprof

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=$HOME/.oh-my-zsh-custom

fpath=(/usr/local/share/zsh-completions $fpath)
fpath=($HOME/.oh-my-zsh-custom/completion $fpath)

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
# plugins=(git gitfast svn cap gem bundler rails git-flow node zsh-autosuggestions)
plugins=(git gitfast zsh-autosuggestions jira)

source $ZSH/oh-my-zsh.sh
source ~/bin/tmuxinator.zsh

setopt auto_cd
cdpath=($HOME/workspace $HOME/workspace2)

# Customize to your needs...
unsetopt auto_name_dirs

# export COFFEELINT_CONFIG=$HOME/.coffeelint.json
# export PATH=$PATH:$HOME/.yarn/bin:$HOME/node_modules/.bin:$HOME/bin:$HOME/.cabal/bin:/usr/local/bin
export PATH="$PATH:./node_modules/.bin"
# [[ -s $HOME/.nvm/nvm.sh ]] && source $HOME/.nvm/nvm.sh
# [[ -s $HOME/.tmuxinator/scripts/tmuxinator.zsh ]] && source $HOME/.tmuxinator/scripts/tmuxinator.zsh
# [[ -s $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# [[ -s "$NVM_DIR/bash_completion" ]] && \. "$NVM_DIR/bash_completion"
# [[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# JAVA
# JAVA_HOME=/usr/local/java/jdk1.8.0_05
# JAVA_HOME=`/usr/libexec/java_home`
# ANT_HOME=/usr/local/java/apache-ant-1.9.3
# PATH=$PATH:$JAVA_HOME/bin:$ANT_HOME/bin
# export JAVA_HOME
# export ANT_HOME
# export PATH

# vman() {
#   vim -c "SuperMan $*"

#   if [ "$?" != "0" ]; then
#     echo "No manual entry for $*"
#   fi
# }
# compdef vman="man"

EDITOR=nvim
export EDITOR
alias e=$EDITOR

# test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh

# added by travis gem
# [ -f ${HOME}/.travis/travis.sh ] && source ${HOME}/.travis/travis.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$HOME/.cargo/bin:$PATH" # Add Rust to PATH

if ! { [ "$TERM" = "screen" ] && [ -n "$TMUX" ]; } then
  export DISABLE_AUTO_TITLE=true
fi

test -e ${HOME}/.zshrc.local && source ${HOME}/.zshrc.local

# zprof

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
