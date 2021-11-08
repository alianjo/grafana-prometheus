#! /usr/bin/bash
helm version --short | grep v3 # Helm should be version 3 or above version
if ! [[ $? -eq 0 ]]
then
	echo 'installing helm...'
	curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
	chmod 700 get_helm.sh
	./get_helm.sh
	rm get_helm.sh
fi
	
kubectl create namespace prometheus
kubectl create namespace grafana
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update
helm install prometheus -n prometheus prometheus-community/prometheus
helm install grafana -n grafana grafana/grafana

