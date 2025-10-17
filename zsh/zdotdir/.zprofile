if [[ ! $DISPLAY && $XDG_VTNR -eq 4 ]]; then
  if [[ ! $TMUX ]]; then
    tmux new-session -d -s 0
    tmux send-keys -t 0 'habit-sequence' C-m
    tmux attach
  fi
fi
