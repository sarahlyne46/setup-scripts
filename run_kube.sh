#!/usr/bin/env bash
kubectl create -f ./my-namespace.yaml
kubectl create -f deployment.yaml
kubectl create -f service.yaml
kubectl get all -n verify-cluster.


kubectl logs nginx


docker stack deploy --namespace my-app --compose-file deployment.yaml mystack