# Multi Node Kubernetes Clusters using KinD
Kind is a tool for running local Kubernetes clusters using Docker container “nodes”. Kind was primarily designed for testing Kubernetes itself, but may be used for local development or CI.

## Install KinD 

### Linux 
```
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.11.1/kind-linux-amd64
chmod +x ./kind
mv ./kind /some-dir-in-your-PATH/kind
```

### Mac OS via Homebrew
```
brew install kind
```

### Windows
```
curl.exe -Lo kind-windows-amd64.exe https://kind.sigs.k8s.io/dl/v0.11.1/kind-windows-amd64
Move-Item .\kind-windows-amd64.exe c:\some-dir-in-your-PATH\kind.exe
```

For More options read KinD Setup docs ![https://kind.sigs.k8s.io/docs/user/quick-start/](https://kind.sigs.k8s.io/docs/user/quick-start/)

### kubectl

The Kubernetes command-line tool, kubectl, allows you to run commands against Kubernetes clusters. You can use kubectl to deploy applications, inspect and manage cluster resources, and view logs. For more information including a complete list of kubectl operations, see the ![kubectl reference documentation.](https://kubernetes.io/docs/reference/kubectl/)

kubectl is installable on a variety of Linux platforms, macOS and Windows. Find your preferred operating system below.

[Install kubectl on Linux](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/)
[Install kubectl on macOS](https://kubernetes.io/docs/tasks/tools/install-kubectl-macos/)
[Install kubectl on Windows](https://kubernetes.io/docs/tasks/tools/install-kubectl-windows/)

##  Create Kubernetes Cluster 

### Simple Cluster

1. To create a simple cluster using commmand line option
```
kind create cluster
```
![Create Simple Cluster](https://raw.githubusercontent.com/MetaArivu/k8s-workshop/master/diagrams/Kind-Simple-Cluster-1.jpg)

2. To Check the containers created by docker for the Simple Cluster
```
docker container ls
```
![Cluster Info](https://raw.githubusercontent.com/MetaArivu/k8s-workshop/master/diagrams/Kind-Simple-Cluster-2.jpg)

3. Use Kubectl to check the worker nodes.
```
kubectl get nodes
```
![Cluster Info](https://raw.githubusercontent.com/MetaArivu/k8s-workshop/master/diagrams/Kind-Simple-Cluster-3.jpg)


### External Load Balancer, 2 Master & 1 Worker Node

1. Create the Kubernetes cluster 
```
create-gamma-cluster
```
Wait for the Ingress Controller to be ready

2. Install the Apps
```
install-apps
```

### External Load Balancer, 2 Master & 3 Worker Node

1. Create the Kubernetes cluster 
```
create-epsilon-cluster
```
![Setup In Progress](https://raw.githubusercontent.com/MetaArivu/k8s-workshop/master/diagrams/k8s-cluster-setup.jpg)

Wait for the Ingress Controller to be ready
![Setup Status](https://raw.githubusercontent.com/MetaArivu/k8s-workshop/master/diagrams/k8s-cluster-setup-status.jpg)

2. Install the Apps
```
install-apps
```
![Installed Apps - Ingres, Service & Pods](https://raw.githubusercontent.com/MetaArivu/k8s-workshop/master/diagrams/k8s-installed-apps.jpg)

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

