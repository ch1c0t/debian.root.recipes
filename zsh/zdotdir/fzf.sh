export FZF_DEFAULT_COMMAND='fdfind --type f --strip-cwd-prefix --hidden --follow --exclude .git'

. /usr/share/doc/fzf/examples/key-bindings.zsh

export FZF_ALT_C_COMMAND='fdfind --type d --hidden --exclude .git'
export FZF_ALT_C_OPTS="--height 100% --preview 'tree -C {} | head -200'"
