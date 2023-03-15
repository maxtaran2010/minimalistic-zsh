directory() {
	echo "%{$FG[010]%}%1~%{$reset_color%}"
}

pc() {
	echo "%{$FG[009]%}%n%{$reset_color%}@%{$FG[009]%}$(cat /proc/sys/kernel/hostname)%{$reset_color%}"
}

ZSH_THEME_GIT_PROMPT_PREFIX="<%{$FG[011]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}>"
ZSH_THEME_GIT_PROMPT_DIRTY="+"
ZSH_THEME_GIT_PROMPT_CLEAN=""
PROMPT='$(pc) %{$FG[014]%}: %{$reset_color%}'
RPROMPT='$(git_prompt_info) $(directory)'
