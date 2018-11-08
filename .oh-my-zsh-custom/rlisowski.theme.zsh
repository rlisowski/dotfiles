ZSH_THEME_GIT_PROMPT_PREFIX="%{$bg[blue]%} "
ZSH_THEME_GIT_PROMPT_SUFFIX=" %{$reset_color$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%b%{$bg[blue]%} …"
ZSH_THEME_GIT_PROMPT_AHEAD="%b%{$bg[blue]%} ↑"
ZSH_THEME_GIT_PROMPT_BEHIND="%b%{$bg[blue]%} ↓"
ZSH_THEME_GIT_PROMPT_STASH="%b%{$bg[blue]%} █"
ZSH_THEME_GIT_PROMPT_ADDED="%b%{$bg[blue]%} ♦"
ZSH_THEME_GIT_PROMPT_CHANGED="%b%{$bg[blue]%} ‣"
ZSH_THEME_GIT_PROMPT_UNMERGED="%b%{$bg[blue]%} ≠"
ZSH_THEME_SVN_PROMPT_DIRTY="%b%{$bg[blue]%} ✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%b%{$bg[blue]%}"
ZSH_THEME_GIT_PROMPT_SHA_BEFORE="%b%{$bg[blue]%} "
ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$bg[blue]%}"

function git_prompt_info() {
  local ref
  if [[ "$(command git config --get oh-my-zsh.hide-status 2>/dev/null)" != "1" ]]; then
    ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
    ref=$(command git rev-parse --short HEAD 2> /dev/null) || return 0
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$(git_prompt_short_sha) $(git_prompt_status)$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}

# function git_prompt_info() {
#   ref=$(git symbolic-ref -q HEAD 2> /dev/null) || $(git name-rev --name-only --no-undefined --always HEAD 2> /dev/null) || return
#   echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$(git_prompt_short_sha)$(parse_git_dirty)$(git_prompt_ahead)$(git_prompt_behind)$(git_prompt_stash)$(git_prompt_staged)$(git_prompt_changed)$ZSH_THEME_GIT_PROMPT_SUFFIX"
# }

function prompt_info() {
  # only proceed if there is actually a svn repository
  # if [ $(in_svn) ]; then
  #   svn_prompt_info
  # else
    git_prompt_info
  # fi
}

function current_pwd {
  pwd_length=4
  pwd_symbol="..."
  newPWD="${PWD/#$HOME/~}"
  if [ $newPWD != '~' ] && [ $(echo -n $newPWD | tr -d -c '/' | awk '{ print NF; }') -gt $pwd_length ]
  then
    newPWD=$(echo -n $newPWD | awk -F '/' '{print $1 "/" $2 "/" $3 "/.../" $(NF-1) "/" $(NF)}')
  fi
  echo $newPWD
}

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

local user_host='%{$terminfo[bold]$fg[green]%}%n@%m'
local current_dir='%{$reset_color%} $(current_pwd)'
local rvm_ruby='%{$reset_color%}%{$bg[red]%} $(rvm-prompt i v p g) %{$fg[red]$bg[blue]%}'
local rev_info='%{$reset_color%}$(prompt_info)'

PROMPT="${rvm_ruby}${rev_info}${current_dir}
%B%(!.#.$)%b "
# RPS1="${return_code}"
# RPS1="%D{[%I:%M:%S]}"

