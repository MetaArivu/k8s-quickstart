#!/bin/bash
echo If K8s cluster is already running then the Port 80 wont be available
echo "docker container run --name kindworkshop -d --rm -p 81:80 metamagic/kind"
docker container run --name kindworkshop -d --rm -p 81:80 metamagic/kind
