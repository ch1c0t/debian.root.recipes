function change-directory {
  local dir

  if [[ "$PWD" -ef "$HOME" ]]; then
    dir=$(fdfind --type d --strip-cwd-prefix --hidden --exclude .git --follow --max-depth 3 | fzf --reverse --height 100% --preview 'tree -C {} | head -200')
  else
    dir=$(fdfind --type d --strip-cwd-prefix --hidden --exclude .git --follow | fzf --reverse --height 100% --preview 'tree -C {} | head -200')
  fi

  if [ -n "$dir" ]; then
    cd "$dir"
    zle accept-line
  fi
}

zle -N change-directory
bindkey '\ec' change-directory
