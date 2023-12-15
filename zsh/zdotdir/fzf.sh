export FZF_DEFAULT_COMMAND='fdfind --type f --strip-cwd-prefix --hidden --follow --exclude .git'

. /usr/share/doc/fzf/examples/key-bindings.zsh

export FZF_ALT_C_COMMAND='fdfind --type d --hidden --exclude .git'
export FZF_ALT_C_OPTS="--height 100% --preview 'tree -C {} | head -200'"

function edit-file {
  local file
  file=$(fd --type f --strip-cwd-prefix --hidden --exclude .git | fzf --reverse --height 100% --preview 'batcat -n --color=always {}')

  if [ -n "$file" ]; then
    ${EDITOR} $file
  fi
}
zle -N edit-file
bindkey '\eef' edit-file
