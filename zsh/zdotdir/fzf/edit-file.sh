function edit-file {
  local file
  file=$(fd --type f --strip-cwd-prefix --hidden --exclude .git | fzf --reverse --height 100% --preview 'batcat -n --color=always {}')

  if [ -n "$file" ]; then
    ${EDITOR} $file
  fi
}

zle -N edit-file
bindkey '\eef' edit-file
