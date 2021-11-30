#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# update docker path with docker repository path
dockerpath="update dockerpath name"

# Step 2:  
# Authenticate & tag
# update username & tag-name
docker login --username "update username" && docker image tag tag-name $dockerpath
echo "Docker ID and Image: $dockerpath"

# Step 3:
docker push $dockerpath