# Infrastructure as Code

This directory contains Terraform code used to provision infrastructure.

Currently the project uses a local Kubernetes cluster (Kind), but this folder prepares the structure for cloud environments.

Possible future targets:

- AWS EKS
- Google GKE
- Azure AKS

## Structure

terraform/
  main.tf
  variables.tf
  outputs.tf

## Usage

Initialize terraform:

terraform init

Plan infrastructure:

terraform plan

Apply infrastructure:

terraform apply

## Goal

Move from local Kubernetes (Kind) to a real cloud environment managed with Terraform.