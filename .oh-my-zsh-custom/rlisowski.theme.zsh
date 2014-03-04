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

ZSH_THEME_SVN_PROMPT_DIRTY="%b %{$fg[yellow]%}✗%{$reset_color%}"

function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$(git_prompt_short_sha)$(parse_git_dirty)$(git_prompt_ahead)$(git_prompt_behind)$(git_prompt_stash)$(git_prompt_staged)$(git_prompt_changed)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

function git_prompt_ahead() {
  if $(echo "$(git log $(git_current_upstream)/$(current_branch)..HEAD 2> /dev/null)" | grep '^commit' &> /dev/null); then
    echo "$ZSH_THEME_GIT_PROMPT_AHEAD"
  fi
}

function git_prompt_behind() {
  if $(echo "$(git log HEAD..$(git_current_upstream)/$(current_branch) 2> /dev/null)" | grep '^commit' &> /dev/null); then
    echo "$ZSH_THEME_GIT_PROMPT_BEHIND"
  fi
}

function git_prompt_stash() {
  if $(echo "$(git stash list 2> /dev/null)" | grep '^stash' &> /dev/null); then
    echo "$ZSH_THEME_GIT_PROMPT_STASH"
  fi
}

function git_prompt_staged() {
  if test $(git diff --staged --name-only --diff-filter=ACDMRT | wc -l) -gt "0"; then
    echo "$ZSH_THEME_GIT_PROMPT_STAGED"
  fi
}

function git_prompt_changed() {
  if test $(git diff --name-only --diff-filter=ACDMRT | wc -l) -gt "0"; then
    echo "$ZSH_THEME_GIT_PROMPT_CHANGED"
  fi
}

function git_prompt_unmerged() {
  if test $(git diff --staged --name-only --diff-filter=U | wc -l) -gt "0"; then
    echo "$ZSH_THEME_GIT_PROMPT_UNMERGED"
  fi
}

function git_current_upstream(){
  local upstream=$(git config --get branch."$(current_branch)".remote) || return
  echo $upstream
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


PROMPT="%(!.$fg[red].)╭─ ${rvm_ruby} ${rev_info}${current_dir}
%(!.$fg[red].)╰─%B%(!.#.$)%b "
# RPS1="${return_code}"
# RPS1="%D{[%I:%M:%S]}"

