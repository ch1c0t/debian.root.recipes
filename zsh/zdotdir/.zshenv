#!/bin/zsh
ZDOTDIR=${XDG_CONFIG_HOME:=~/.config}/zsh
[[ -f "$HOME/.cargo/env" ]] && . "$HOME/.cargo/env"
PATH="$HOME/.local/bin:$PATH"
