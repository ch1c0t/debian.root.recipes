function git-diff {
  zle push-input
  BUFFER="git diff"
  zle accept-line
}

zle -N git-diff
bindkey '^Xd' git-diff
