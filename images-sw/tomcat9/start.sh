#!/bin/bash
echo "docker container run --name tomcat-9 -d -p 8080:8080 metamagic/tomcat:9"
docker container run --name tomcat-9 -d -p 8080:8080 metamagic/tomcat:9
