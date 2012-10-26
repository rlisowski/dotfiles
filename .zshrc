# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=$HOME/.oh-my-zsh-custom

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git svn cap gem bundler rails3 git-flow node)

source $ZSH/oh-my-zsh.sh

setopt auto_cd
cdpath=($HOME/workspace)
cdpath=($HOME/workspace/arte)

# Customize to your needs...
unsetopt auto_name_dirs
source "${HOME}/.rvm/scripts/rvm"
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
if [[ -s "${TM_PROJECT_DIRECTORY}/.rvmrc" ]]
then
	source "${TM_PROJECT_DIReCTORY}/.rvmrc"
fi
export EDITOR=gvim
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
