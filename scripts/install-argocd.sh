#!/bin/bash

echo "Installing ArgoCD..."

kubectl apply -n argocd \
-f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

echo "Waiting pods..."

kubectl wait --for=condition=available deployment/argocd-server -n argocd --timeout=120s

echo "ArgoCD installed"