#!/bin/bash
#Run this because it needs it to be setup first
aws eks update-kubeconfig --region us-east-1 --name kanban-cluster
# Script that is just running the kubectl commands to reapply yaml files once they've been updated
kubectl apply -f kubernetes/manifests/service-account.yaml
kubectl apply -f kubernetes/manifests/kanban-service.yaml
kubectl apply -f kubernetes/manifests/deployment.yaml
kubectl apply -f kubernetes/manifests/kanban-ingress.yaml

eksctl utils associate-iam-oidc-provider --region us-east-1 --cluster kanban-cluster --approve
# vvv This is to run the load balancer  - only thing to change is the VPC id which is created unique everytime 

 helm install aws-load-balancer-controller eks/aws-load-balancer-controller \
  --set clusterName=kanban-cluster \
  --set serviceAccount.create=false \
  --set serviceAccount.name=aws-load-balancer-controller \
  --set region=us-east-1 \
  --set vpcId=vpc-vpc-005a9c6dd07e03ccf \  # This should change to newley created VPC ID everytime 
  -n kube-system
