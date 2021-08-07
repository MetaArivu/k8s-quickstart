#!/bin/bash
echo "docker container run --name order-service -d -p 9010:9010 metamagic/bdd-order-service"
docker container run --name order-service -d -p 9010:9010 metamagic/bdd-order-service
