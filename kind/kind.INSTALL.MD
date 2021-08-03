Kind is Multi Node Multi Cluster environment for K8s on ur laptop.

# Create Cluster
$ kind create cluster --name sigma-cluster

# Delete Cluster
$ kind delete cluster --name sigma-cluster

# Show Cluster Info
$ kubectl cluster-info --context kind-sigma-cluster

# To see Kind Container
$ docker container ls

# To see the nodes in the cluster
$ kubectl get nodes

# Load images into the node
$ kind load 

# Kind Demo Git Repo
$ git clone https://github.com/vfarcic/kind-demo

# Create Multi Node Cluster from Config File
$ kind create cluster --config multi-node.yaml

# To See K8s Cluster nodes
$ kubectl get nodes
