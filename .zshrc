# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=$HOME/.oh-my-zsh-custom

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git svn cap gem bundler rails3 git-flow node)

source $ZSH/oh-my-zsh.sh

setopt auto_cd
cdpath=($HOME/workspace)

# Customize to your needs...
unsetopt auto_name_dirs
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export rvmsudo_secure_path=1

[[ -s /home/rlisowski/.nvm/nvm.sh ]] && source /home/rlisowski/.nvm/nvm.sh # This loads NVM

export COFFEELINT_CONFIG=$HOME/.coffeelint.json
PATH=$PATH:$HOME/node_modules/.bin:$HOME/.rvm/bin:$HOME/.rvm/bin:/opt/vagrant/bin # Add RVM to PATH for scripting
if [[ -s "${TM_PROJECT_DIRECTORY}/.rvmrc" ]]
then
	source "${TM_PROJECT_DIRECTORY}/.rvmrc"
fi
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
