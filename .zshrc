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
plugins=(git gitfast svn cap gem bundler rails git-flow node zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

setopt auto_cd
cdpath=($HOME/workspace $HOME/workspace2)

# Customize to your needs...
unsetopt auto_name_dirs

export COFFEELINT_CONFIG=$HOME/.coffeelint.json
export PATH=$PATH:$HOME/node_modules/.bin:$HOME/bin:$HOME/.cabal/bin
[[ -s $HOME/.nvm/nvm.sh ]] && source $HOME/.nvm/nvm.sh
[[ -s $HOME/.tmuxinator/scripts/tmuxinator.zsh ]] && source $HOME/.tmuxinator/scripts/tmuxinator.zsh
[[ -s $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# JAVA
# JAVA_HOME=/usr/local/java/jdk1.8.0_05
JAVA_HOME=`/usr/libexec/java_home`
# ANT_HOME=/usr/local/java/apache-ant-1.9.3
# PATH=$PATH:$JAVA_HOME/bin:$ANT_HOME/bin
export JAVA_HOME
# export ANT_HOME
# export PATH

vman() {
  vim -c "SuperMan $*"

  if [ "$?" != "0" ]; then
    echo "No manual entry for $*"
  fi
}
compdef vman="man"

EDITOR=vim
export EDITOR
alias e=$EDITOR

test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh

# added by travis gem
[ -f /Users/rlisowski/.travis/travis.sh ] && source /Users/rlisowski/.travis/travis.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
