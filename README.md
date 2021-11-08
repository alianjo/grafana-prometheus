# grafana-prometheus
Install Grafana and Prometheus in a simple way
## Prerequisites
### you need at least Kubernetes cluster with 2 nodes and this amount of resource
|Role|FQDN|IP|OS|RAM|CPU|
|----|----|----|----|----|----|
|Master|kmaster.example.com|172.16.16.100|Ubuntu 20.04|2G|2|
|Worker|kworker.example.com|172.16.16.101|Ubuntu 20.04|1G|1|

## install Grafana and Prometheus
clone repository
```console
git clone https://github.com/alianjo/grafana-prometheus```

deploy them

```console
./deploy.sh'''

