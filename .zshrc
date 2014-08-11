# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=$HOME/.oh-my-zsh-custom

fpath=($HOME/.oh-my-zsh-custom/completion $fpath)

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git svn cap gem bundler rails git-flow node)

source $ZSH/oh-my-zsh.sh

setopt auto_cd
cdpath=($HOME/workspace $HOME/workspace2)

# Customize to your needs...
unsetopt auto_name_dirs

[[ -s /home/rlisowski/.nvm/nvm.sh ]] && source /home/rlisowski/.nvm/nvm.sh # This loads NVM

export COFFEELINT_CONFIG=$HOME/.coffeelint.json
if [[ -s "${TM_PROJECT_DIRECTORY}/.rvmrc" ]]
then
	source "${TM_PROJECT_DIRECTORY}/.rvmrc"
fi
[[ -s $HOME/.tmuxinator/scripts/tmuxinator.zsh ]] && source $HOME/.tmuxinator/scripts/tmuxinator.zsh
[[ -s $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Add NVM to PATH
export PATH=$PATH:$HOME/node_modules/.bin:$HOME/bin

# JAVA
JAVA_HOME=/usr/local/java/jdk1.8.0_05
ANT_HOME=/usr/local/java/apache-ant-1.9.3
PATH=$PATH:$JAVA_HOME/bin:$ANT_HOME/bin
export JAVA_HOME
export ANT_HOME
export PATH

# Add RVM to PATH for scripting
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
