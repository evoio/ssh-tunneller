#!/bin/bash

docker run -d -p 5000:5000 -v ~/.ssh/:/root/.ssh --name ssh_tunnel --restart always evoio/ssh-tunneller
