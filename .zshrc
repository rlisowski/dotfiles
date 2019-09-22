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

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

EDITOR=nvim
export EDITOR
alias e=$EDITOR

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$HOME/.cargo/bin:$PATH" # Add Rust to PATH
export PATH="./bin:$HOME/go/bin:$HOME/bin:./node_modules/.bin:$PATH"

if ! { [ "$TERM" = "screen" ] && [ -n "$TMUX" ]; } then
  export DISABLE_AUTO_TITLE=true
fi

test -e ${HOME}/.zshrc.local && source ${HOME}/.zshrc.local

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
