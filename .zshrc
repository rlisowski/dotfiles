# zmodload zsh/zprof

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=$HOME/.oh-my-zsh-custom

setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_BEEP

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
plugins=(gitfast zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
source ~/bin/tmuxinator.zsh

setopt auto_cd
cdpath=($HOME/workspace $HOME/workspace2)

# Customize to your needs...
unsetopt auto_name_dirs

DEFAULT_NODE_VERSION='13.9.0'

# Ensure we have a default node version in our PATH at startup
if [ -d "${HOME}/.nvm/versions/node/v${DEFAULT_NODE_VERSION}/bin" ] ; then
  PATH="${HOME}/.nvm/versions/node/v${DEFAULT_NODE_VERSION}/bin:${PATH}"
fi

# Avoid using the slow `nvm use` at startup.
# We already have a default node available in our PATH.
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh" --no-use

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

export FZF_DEFAULT_COMMAND='rg --files --ignore-vcs --hidden'

export GPG_TTY=$(tty)

# zprof
