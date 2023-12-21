# https://superuser.com/questions/403355/how-do-i-get-searching-through-my-command-history-working-with-tmux-and-zshell
bindkey -e

bindkey '^j' autosuggest-execute
bindkey -s '\eh' '^l bindkey -l^M'
bindkey -s '\eeh' '^l bindkey -l^M'
