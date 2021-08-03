#################################################################
#
# PodShell - Developer Tool box to test Pods in Kubernetes
#
# (C) MetaMagic Global Inc, NJ, USA, 2021
#
# Arivu Services & Containers
#
# Version 0.1
#################################################################
# Base Version
FROM metamagic/alpine:latest

MAINTAINER Araf Karsh Hamid <araf.karsh@metamagic.in>
##
RUN apk --update add openssh nmap nmap-scripts curl tcpdump bind-tools jq nmap-ncat
RUN apk update && apk add wget && apk add curl && apk add nano

# Install Network Utilities
RUN apk add nuttcp 
#RUN apk add nutperf && apk add nuttcp 

USER arivu

ENTRYPOINT /bin/bash
