# Multi Node Kubernetes Clusters using KinD

##  Quick Start 

### External Load Balancer, 2 Master & 1 Worker Node

1. Create the Kubernetes cluster 
```
create-gamma-cluster
```
![Setup In Progress](https://raw.githubusercontent.com/MetaArivu/k8s-workshop/master/diagrams/k8s-cluster-setup.jpg)

Wait for the Ingress Controller to be ready
![Setup Status](https://raw.githubusercontent.com/MetaArivu/k8s-workshop/master/diagrams/k8s-cluster-setup-status.jpg)

2. Install the Apps
```
install-apps
```
![Installed Apps - Ingres, Service & Pods](https://raw.githubusercontent.com/MetaArivu/k8s-workshop/master/diagrams/k8s-installed-apps.jpg)

### External Load Balancer, 2 Master & 3 Worker Nodes

1. Create the Kubernetes cluster 
```
create-epsilon-cluster
```
Wait for the Ingress Controller to be ready

2. Install the Apps
```
install-apps
```

## Whats Inside the Script

### Create Multi Node Cluster with LB, 2 Masters & 1 Worker Node
```
kind create cluster --config clusters/gama-3.yaml
```

### Install NGINX Ingress Controller
```
kkubectl apply --filename https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/provider/kind/deploy.yaml
```

### Deploy the Applications
```
kubectl apply  --filename apps/app-namespace.yaml
kubectl apply  --filename apps
```

### Create Multi Node Cluster with LB, 2 Masters & 3 Worker Nodes
```
kind create cluster --config clusters/epsilon-5.yaml
```

### Install NGINX Ingress Controller
```
kkubectl apply --filename https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/provider/kind/deploy.yaml
```

### Deploy the Applications
```
kubectl apply  --filename apps/app-namespace.yaml
kubectl apply  --filename apps
```

## KinD commands

Kind is Multi Node Multi Cluster environment for K8s on ur laptop.

### Create Cluster
$ kind create cluster --name sigma-cluster

### Delete Cluster
$ kind delete cluster --name sigma-cluster

### Show Cluster Info
$ kubectl cluster-info --context kind-sigma-cluster

### To see Kind Container
$ docker container ls

### To see the nodes in the cluster
$ kubectl get nodes

### Load images into the node
$ kind load 

### Create Multi Node Cluster from Config File
$ kind create cluster --config multi-app.yaml

### To See K8s Cluster nodes
$ kubectl get nodes

