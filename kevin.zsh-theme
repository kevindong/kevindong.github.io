# This is a combination of risto and robbyrussell.
PROMPT="%{$fg_bold[green]%}➜ "
PROMPT+='%{$fg_bold[blue]%}%c $(git_prompt_info)%{$reset_color%}%(!.#.$) '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="›%{$reset_color%}"
