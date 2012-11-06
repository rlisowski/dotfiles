ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[yellow]%}›%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%b %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%b %{$fg[yellow]%}♦%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%b"
ZSH_THEME_GIT_PROMPT_SHA_BEFORE="%b "

ZSH_THEME_SVN_PROMPT_DIRTY="%b %{$fg[yellow]%}✗%{$reset_color%}"

function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$(git_prompt_short_sha)$(parse_git_dirty)$(git_prompt_ahead)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

function prompt_info() {
  # only proceed if there is actually a svn repository
  if [ $(in_svn) ]; then
    svn_prompt_info
  else
    git_prompt_info
  fi
}

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

local user_host='%{$terminfo[bold]$fg[green]%}%n@%m%{$reset_color%}'
local current_dir='%{$terminfo[bold]$fg[blue]%} %~%{$reset_color%}'
local rvm_ruby='%{$fg[red]%}‹$(rvm-prompt i v p g)›%{$reset_color%}'
# local rvm_ruby='%{$fg[red]%}‹$(rbenv version | sed -e "s/ (set.*$//")›%{$reset_color%}'
local rev_info='$(prompt_info)%{$reset_color%}'

PROMPT="╭─ ${rvm_ruby} ${rev_info}${current_dir}
╰─%B$%b "
# RPS1="${return_code}"
RPS1="%D{[%I:%M:%S]}"

