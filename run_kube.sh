#!/usr/bin/env bash
kubectl create -f ./my-namespace.yml # amend my-namespace.yml to 
kubectl create -f deployment.yml
kubectl create -f service.yml
kubectl get all -n verify-cluster.


kubectl logs nginx


docker stack deploy --namespace name_space --compose-file deployment.yml stack_name #amend name_space & stack_name
