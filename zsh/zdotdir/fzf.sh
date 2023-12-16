export FZF_DEFAULT_COMMAND='fdfind --type f --strip-cwd-prefix --hidden --follow --exclude .git'

function change-directory {
  local dir

  if [[ "$PWD" -ef "$HOME" ]]; then
    dir=$(fdfind --type d --strip-cwd-prefix --hidden --exclude .git --follow --max-depth 2 | fzf --reverse --height 100% --preview 'tree -C {} | head -200')
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

function edit-file {
  local file
  file=$(fd --type f --strip-cwd-prefix --hidden --exclude .git | fzf --reverse --height 100% --preview 'batcat -n --color=always {}')

  if [ -n "$file" ]; then
    ${EDITOR} $file
  fi
}
zle -N edit-file
bindkey '\eef' edit-file
