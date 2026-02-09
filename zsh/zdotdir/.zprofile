if [[ ! $DISPLAY && $XDG_VTNR -eq 4 ]]; then
  if [[ ! $TMUX ]]; then
    tmux new-session -d -s 0 'journalctl --since today --follow'
    tmux new-window -t '$0' 'habit-sequence'
    tmux attach
  fi
fi
