export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'

. /usr/share/doc/fzf/examples/key-bindings.zsh

export FZF_ALT_C_COMMAND='fdfind --type d --hidden --exclude .git'
export FZF_ALT_C_OPTS="--height 100% --preview 'tree -C {} | head -200'"
