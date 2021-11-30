#!/usr/bin/env bash

# This uploads an image to Docker Hub using kubernetes

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="dockerpath"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run docker-repo-name --image=$dockerpath --port=port-number

sleep 40s

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/docker-repo-name hostport:containerport 


# Get logs
kubectl logs `kubectl get pods -o=name`
