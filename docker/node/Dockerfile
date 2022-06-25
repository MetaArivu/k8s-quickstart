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
FROM mhart/alpine-node

MAINTAINER Araf Karsh Hamid <araf.karsh@metamagic.in>

RUN apk add bash

# Create Software Directories
RUN mkdir -p /Softwares
RUN chmod -R 750 /Softwares

# Add user
RUN adduser -D -u 2048 -s /bin/bash poduser

COPY --chown=poduser:poduser .bashrc /home/poduser/

RUN chown poduser:poduser /Softwares
RUN chown poduser:poduser /home/poduser/

WORKDIR /home/poduser

RUN apk update && apk add wget && apk add curl && apk add nano
RUN npm install -g newman

# Run the Container as poduser only for SW Containers
USER poduser

ENTRYPOINT /bin/bash
