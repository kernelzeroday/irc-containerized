#!/bin/bash

# Start tor in the background
tor &

# Wait for tor to start
while ! nc -z localhost 9050; do   
  sleep 0.1 # wait for 1/10 of the second before check again
done

# Start tmux using proxychains to route through tor
proxychains -q tmux new-session -d 'irssi'
tail -f /dev/null
