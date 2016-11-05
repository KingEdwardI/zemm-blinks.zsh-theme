# King Edward's version of Ryan Arana's take on the Blinks ZSH theme - https://github.com/aranasaurus/zemm-blinks.zsh-theme
# Ryan Arana's take on the Blinks theme - https://github.com/cadetZemm/zemm-blinks.zsh-theme
# Original Blinks theme is here: https://github.com/robbyrussell/oh-my-zsh/blob/master/themes/blinks.zsh-theme

# changes depending on if you're in a Git or Mercurial folder
function _prompt_char() {
  if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
    echo "$FG[027]Ѫ%{%f%k%b%}"
  else
    echo "$FG[027]∞%{%f%k%b%}"
  fi
}

# git prompt info
function _prompt_info() {
  if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
    echo $(git_prompt_info)
  elif $(hg root &> /dev/null); then
    echo $(hg_prompt_info 2> /dev/null) || ""
  fi
}

# git prompt styling
ZSH_THEME_GIT_PROMPT_PREFIX=" [%{%B%F{blue}%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{%f%k%b%B%}$FG[064]]"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{%B%}$FG[196]✗%{%f%k%b%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{%B%}$FG[046]✓%{%f%k%b%}"

# Full ZSH prompt - left
PROMPT='%{%f%k%b%}
$FG[093]%n%{%B%F{blue}%}$FG[052] [Ꮬ] $FG[064]【%{%b%}$FG[172]%~$FG[064]】$(_prompt_info)%E%{%f%k%b%}
%{%}$(_prompt_char)%{%} %{%B%}$FG[093]※≫$FG[070]⑆  %{%b%F{white}%}'

# ZSH prompt - right
RPROMPT='$FG[052] [Ꮬ] $FG[112]%@ இ  %D{%Y⋮%m⋮%d} %{%f%k%b%}'

# இ  ☯ 
