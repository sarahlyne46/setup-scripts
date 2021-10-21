#!/usr/bin/env bash
docker stack deploy \
  --namespace my-app \
  --compose-file /path/to/deployment.yml mystack