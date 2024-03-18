tmux new-session -s Main \; \
  send-keys 'gotop' C-m \; \
  split-window -v \; \
  split-window -h \; \
  send-keys 'nvim' C-m \; 
