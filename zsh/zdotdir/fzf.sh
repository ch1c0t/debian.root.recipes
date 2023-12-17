export FZF_DEFAULT_COMMAND='fdfind --type f --strip-cwd-prefix --hidden --follow --exclude .git'

. $(dirname $0)/fzf/change-directory.sh
. $(dirname $0)/fzf/edit-file.sh
