#!/bin/bash

helm repo add eks https://aws.github.io/eks-charts                                                                                                                 ─╯
helm repo update
helm install aws-load-balancer-controller eks/aws-load-balancer-controller \
  -n kube-system \
  --set clusterName=atheon \
  --set serviceAccount.create=false \
  --set serviceAccount.name=aws-load-balancer-controller \
  --set region=us-east-1 \
  --set vpcId=vpc-09669e3299adac0c7
