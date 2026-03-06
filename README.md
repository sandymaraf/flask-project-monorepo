# DevOps GitOps Lab

End-to-end DevOps project demonstrating modern cloud-native practices.

## Stack

Docker  
Kubernetes  
Helm  
ArgoCD  
GitHub Actions  
Kind  

## Architecture

Developer → GitHub → CI Pipeline → Docker Registry → GitOps → ArgoCD → Kubernetes

## Repository Structure

app/  
Application source code.

helm/  
Helm charts used for Kubernetes deployments.

argocd/  
ArgoCD Applications.

gitops/  
GitOps definitions and workflows.

terraform/  
Infrastructure as Code (future cloud infrastructure).

scripts/  
Automation scripts to create and destroy clusters.

## Quick Start

Create cluster:

make cluster

Install ArgoCD:

make argocd

Deploy application:

make deploy-dev

## Learning Goals

This project demonstrates:

- containerization
- CI/CD pipelines
- GitOps workflows
- Kubernetes deployments
- environment promotion# flask-project-monorepo
