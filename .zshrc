# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="rlisowski"
#export ZSH_THEME="robbyrussell"
#export ZSH_THEME="geoffgarside"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
unsetopt auto_name_dirs
source "${HOME}/.rvm/scripts/rvm"
if [[ -s "${TM_PROJECT_DIRECTORY}/.rvmrc" ]]
then
	source "${TM_PROJECT_DIReCTORY}/.rvmrc"
fi
#[[ -s "~/.rvm/scripts/rvm" ]] && . "~/.rvm/scripts/rvm"  # This loads RVM into a shell session.
