#!/bin/bash

# Script that is just running the kubectl commands to reapply yaml files once they've been updated
kubectl apply -f kubernetes/manifests/service-account.yaml
kubectl apply -f kubernetes/manifests/kanban-service.yaml
kubectl apply -f kubernetes/manifests/deployment.yaml
kubectl apply -f kubernetes/manifests/kanban-ingress.yaml
