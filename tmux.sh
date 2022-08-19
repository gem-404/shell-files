#!/bin/sh

tmux new-session -s "mySession" -d 
tmux split-window -v
tmux split-window -h

tmux -2 attach-session -d
