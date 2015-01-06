ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[yellow]%}›%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%b %{$fg[yellow]%}…%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%b %{$fg[yellow]%}↑%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%b %{$fg[yellow]%}↓%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_STASH="%b %{$fg[yellow]%}█%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_STAGED="%b %{$fg[yellow]%}♦%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CHANGED="%b %{$fg[yellow]%}‣%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%b %{$fg[yellow]%}≠%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%b"
ZSH_THEME_GIT_PROMPT_SHA_BEFORE="%b "

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

PROMPT="%(!.$fg[red].)╭─ ${rvm_ruby} ${rev_info}${current_dir}
%(!.$fg[red].)╰─%B%(!.#.$)%b "
# RPS1="${return_code}"
# RPS1="%D{[%I:%M:%S]}"
