# Flask Helm Chart

Helm chart used to deploy the Flask application to Kubernetes.

## Chart Structure

Chart.yaml  
values.yaml  
templates/

## Default Deployment

helm install flask . -f values.yaml

## Environment Deployments

Development:

helm install flask . -f values-dev.yaml

Staging:

helm install flask . -f values-staging.yaml

Production:

helm install flask . -f values-prod.yaml

## Values

Key parameters:

replicaCount  
image.repository  
image.tag  
service.port