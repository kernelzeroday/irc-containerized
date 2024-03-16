#!/bin/bash

# Get the container id of the running irc image by name "sketchy-irc"
container_id=$(docker ps -q --filter name=sketchy-irc)

# Connect to the tty of the running irc image and attach to the tmux session
docker exec -it $container_id tmux attach
