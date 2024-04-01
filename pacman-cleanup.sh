#!/bin/sh

oc delete -n pacman -f security/rbac.yaml
oc delete -n pacman -f security/secret.yaml
oc delete -n pacman -f deployments/mongo-deployment.yaml
oc delete -n pacman -f deployments/pacman-deployment.yaml
oc delete -n pacman -f services/mongo-service.yaml
oc delete -n pacman -f services/pacman-service.yaml
oc delete -n pacman -f persistentvolumeclaim/mongo-pvc.yaml
oc delete namespace pacman