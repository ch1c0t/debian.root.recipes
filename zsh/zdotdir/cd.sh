function move-to-near-dir {
  local dir
  dir=$(fd --type d --strip-cwd-prefix --hidden --follow -d 2 | fzf --reverse --height 100% --preview 'tree -C {} | head -200')

  if [ -n "$dir" ]; then
    cd "$dir"
    zle accept-line
  fi
}

zle -N move-to-near-dir
bindkey '\eec' move-to-near-dir
