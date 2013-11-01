RPROMPT='$(battery_pct_prompt)'

GIT_PS1_SHOWDIRTYSTATE=YesPlease
GIT_PS1_SHOWSTASHSTATE=YesPlease
GIT_PS1_SHOWUNTRACKEDFILES=YesPlease
GIT_PS1_SHOWUPSTREAM=YesPlease
GIT_PS1_SHOWCOLORHINTS=YesPlease

#%{$fg[magenta]%}%n%{$reset_color%} at %{$fg[yellow]%}%M%{$reset_color%} in %{$fg_bold[green]%}%c%{$reset_color%}$(hg_prompt_info)$(git_prompt_info)%(?,,%{${fg_bold[white]}%}[%?]%{$reset_color%} ) $(prompt_char)$

precmd () { __git_ps1 "%{$fg[magenta]%}%n%{$reset_color%} at %{$fg[yellow]%}%M%{$reset_color%} in %{$fg_bold[green]%}%c%{$reset_color%}%{$fg[red]%}%(?..[%?] )%{$reset_color%}" " $ " " (%s)" }
