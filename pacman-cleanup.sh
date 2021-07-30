#!/bin/sh

kubectl delete -n pacman -f security/rbac.yaml
kubectl delete -n pacman -f security/secret.yaml
kubectl delete -n pacman -f deployments/mongo-deployment.yaml
kubectl delete -n pacman -f deployments/pacman-deployment.yaml
kubectl delete -n pacman -f services/mongo-service.yaml
kubectl delete -n pacman -f services/pacman-service.yaml
kubectl delete -n pacman -f persistentvolumeclaim/mongo-pvc.yaml
kubectl delete namespace pacman