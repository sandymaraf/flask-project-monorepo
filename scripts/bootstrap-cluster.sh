#!/bin/bash

echo "Cleaning old cluster..."
kind delete cluster --name devops-lab || true

echo "Creating Kind cluster..."
kind create cluster --name devops-lab

echo "Creating namespaces..."

kubectl create namespace argocd || true
kubectl create namespace flask || true

echo "Installing ArgoCD..."

kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

echo "Waiting for ArgoCD..."

kubectl wait --for=condition=available deployment/argocd-server -n argocd --timeout=120s

echo "Cluster ready!"