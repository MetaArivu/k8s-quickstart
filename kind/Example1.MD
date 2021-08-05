
Creates a Default K8s Cluster named "kind" with a Single node
```
$ kind create cluster 
```

To check the Container Info
```
$ docker ps
```

To Check Cluters info in K8s Config

```
$ fgrep server ~/.kube/config
```

You should be able to see the IP-Address/Port (under the Ports section from docker ps) in the .kube/config

To see the Clusters in Kind
```
$ kind get cluster
```

To see the nodes in Kubernetes
```
$ kubectl get nodes
```

To switch the Context in K8s
```
$ kubectl nodes --context context-name
```

To See all the Context
```
$ kubectl config get-contexts
```

To Switch Context Permanently
```
$ kubectl config use-context context-name
```

To Create Multi Node K8s Cluster
```
$ kind create cluster --config multi-node.yml
```

Connect to a K8s Node inside Kind
```
$ docker exec -it container-name
```

Checkout the HAProxy Config Inside the K8s External Load Balancer Container
```
$ ps -ef 
$ more /usr/local/etc/haproxy/haproxy.cfg
```

To check the network of the External LB
```
$ docker network ls
```

To See all the Pods Running in a Node
```
$ kubectl get pods -A
```

To run a specific version of kubernetes in Kind
```
$ kind create cluster --image k8s-image-version
$ kind create cluster --image kindest/node:v1.20.7@sha256:cbeaf907fc78ac97ce7b625e4bf0de16e3ea725daf6b04f930bd14c67c671ff9
```

Each node or master can be a different K8s version (Not Recommended)
Reference: https://github.com/kubernetes-sigs/kind/releases





