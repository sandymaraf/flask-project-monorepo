install-kind:
	brew install kind

cluster:
	kind create cluster --name devops-lab

install-argocd:
	kubectl create namespace argocd || true
	kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

deploy-dev:
	kubectl apply -f argocd/bootstrap/application-dev.yaml

argocd-ui:
	kubectl port-forward svc/argocd-server -n argocd 8080:443

destroy:
	kind delete cluster --name devops-lab