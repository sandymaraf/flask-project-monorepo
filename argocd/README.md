# ArgoCD Applications

This directory contains ArgoCD Applications used for GitOps deployments.

Each environment has its own Application resource.

## Environments

- application-dev.yaml
- application-staging.yaml
- application-prod.yaml

These applications deploy the Helm chart from the repository.

## Deploy

Apply with:
kubectl apply -f application-dev.yaml