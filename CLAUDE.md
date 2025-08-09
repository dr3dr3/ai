# Claude Configuration for Kubernetes Administration

## Context
This is a Kubernetes administration environment. Claude is configured to help with cluster management, deployment operations, and troubleshooting.

## Available Tools
- kubectl (Kubernetes CLI)
- helm (Package manager)
- docker (Container runtime)
- git (Version control)

## Common Commands
```bash
# Cluster status and health
kubectl cluster-info
kubectl get nodes
kubectl get pods --all-namespaces
kubectl top nodes
kubectl top pods --all-namespaces

# Application deployment
kubectl apply -f manifests/
kubectl rollout status deployment/app-name
kubectl rollout restart deployment/app-name

# Debugging and troubleshooting
kubectl describe pod pod-name
kubectl logs pod-name -f
kubectl exec -it pod-name -- /bin/bash

# Resource management
kubectl get all -n namespace-name
kubectl delete pod pod-name
kubectl scale deployment deployment-name --replicas=3

# Helm operations
helm list --all-namespaces
helm install release-name chart-name
helm upgrade release-name chart-name
helm uninstall release-name

# Testing and validation
kubectl apply --dry-run=client -f manifest.yaml
kubectl diff -f manifest.yaml