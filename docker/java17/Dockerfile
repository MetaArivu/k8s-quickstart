#################################################################
#
# Developer Tool box to test Pods in Kubernetes
#
# (C) MetaMagic Global Inc, NJ, USA, 2022
# Apache 2.0 License
# Arivu Services & Containers
# 
# Container Oracle Java 17
#
# Version 0.1
#################################################################
# Base Version
FROM metamagic/ubuntu:latest

MAINTAINER Araf Karsh Hamid <araf.karsh@metamagic.in>


# Install Java 17 from Oracle
COPY --chown=poduser:poduser jdk-17_linux-x64_bin.tar.gz /Softwares/
#COPY jdk-17_linux-x64_bin.tar.gz /Softwares/

RUN cd /Softwares && tar -xvf jdk-17_linux-x64_bin.tar.gz && rm jdk-17_linux-x64_bin.tar.gz

ENV JAVA_HOME /Softwares/jdk-17.0.3.1
RUN export PATH=$PATH:$JAVA_HOME/bin

# Run the Container as poduser
USER poduser

ENTRYPOINT /bin/bash
