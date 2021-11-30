#!/usr/bin/env bash
# update docker if required
# sudo apt-get update && sudo apt-get install docker.io -y

# Build image
# update tag-name
docker build --tag=tag-name .

# List docker images
docker image ls

# Run flask app in docker
# update ports (-p) and tag-bane
# docker run -p 8000:5001 tag-name

