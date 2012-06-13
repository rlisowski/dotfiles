PROMPT='%B%~%b %{$reset_color%}
$ '

ZSH_THEME_GIT_PROMPT_PREFIX="%B"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%b %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%b %{$fg[yellow]%}♦%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%b"
ZSH_THEME_GIT_PROMPT_SHA_BEFORE="%b "

function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$(git_prompt_short_sha)$(parse_git_dirty)$(git_prompt_ahead)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

RPROMPT='%B$(~/.rvm/bin/rvm-prompt) $(git_prompt_info)%{$reset_color%}'

