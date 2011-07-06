PROMPT='
%h [%D %B%*%b] %n@%m:%p %B%2c%b $(git_prompt_info) % %{$reset_color%}
$ '

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%B"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%b) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%b)"


function rvm_ruby_prompt {
  if (declare -f rvm > /dev/null) {
      if [[ -x $MY_RUBY_HOME ]]
      then ruby -v | sed 's/\([^(]*\).*/\1/'
      fi
  }
}
# Rubies are red, and my rprompt is too
RPROMPT='%{$fg[blue]%}$(rvm_ruby_prompt)%{$reset_color%}%'

