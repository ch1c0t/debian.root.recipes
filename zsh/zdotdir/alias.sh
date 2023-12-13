alias be='bundle exec'

alias ec="$EDITOR $ZDOTDIR/.zshrc"
alias sc="source $ZDOTDIR/.zshrc"

alias s="systemctl"
alias u="systemctl --user"
alias bus="busctl"
alias bu="busctl --user"
alias tm="tmuxinator"
alias n="nvim"
alias l="ls -lah"

e() {
  ${EDITOR} $1
}
