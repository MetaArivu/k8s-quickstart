# Kubernetes Workshop

- Docker Containers (20.10)
- Kind (0.11)
- Kubernetes (1.21)
- Istio (1.10x)

##  Getting Started

Please click <a href="https://github.com/MetaArivu/k8s-workshop/tree/master/kind">here</a> for getting started with Docker, KinD, Kubernetes installation and Demo Apps.

## New Apps Added in Kind section

### Updates on Aug 13, 2021

1. Chapter 4 - Lambda App (nothing to do with Amazon Lambda) with Spring Boot Apps (Cart, Order, Payment)
2. Checkout the <a href="https://github.com/MetaArivu/k8s-workshop/tree/master/kind">Kind directory</a> for the details.
3. For Docker, Kind, Kubectl command short cuts checkout the bash_profile file.

## Microservices Template

Microservice Template gives you a

1. SpringBoot App template with
2. Open API 3 Ex,
3. Spring Actuator,
4. Spring Sleuth and
5. Pom file with (SpringBoot) Fat and Thin (Maven) jar file creation and
6. Dockerfile for containerisation.

Checkout the <a href="https://github.com/MetaArivu/microservice-template">repository</a> to Quickstart on Springboot based Dockerized Microservices.

Mock Services built using Microservices Template Code base. These services have REST Endpoint implementations.

1. <a href="https://github.com/MetaArivu/mock-cart">Cart Service</a>
2. <a href="https://github.com/MetaArivu/mock-order">Order Service</a>
3. <a href="https://github.com/MetaArivu/mock-payment">Payment Service</a>

These services will be updated with more functionality by end of Aug 2021.

## Server, Virtual Machines & Containers

![Containers](https://raw.githubusercontent.com/MetaArivu/k8s-workshop/master/diagrams/Servers-VMs-Containers.jpg)

## Kubernetes Architcture

![K8s Architecture](https://raw.githubusercontent.com/MetaArivu/k8s-workshop/master/diagrams/K8s-Arch.jpg)

## Service Mesh

![Service Mesh](https://raw.githubusercontent.com/MetaArivu/k8s-workshop/master/diagrams/Istio-Components.jpg)

##  Demo App Architecture

![Shopping Portal](https://raw.githubusercontent.com/MetaArivu/k8s-workshop/master/diagrams/K8s-Demo-1.jpg)

## KinD Docker Images - Sofware (sw)

- alpine-base
- apache
- echo
- java
- podshell
- tomcat

## KinD Clusters

- Clusters (Contain Cluster Configurations)
- Apps (Demo Service Infra Code)

bash_profile contains shortcuts to various commmands for

1. Docker
2. Kind
3. Kubernetes (kubectl)
4. Git

Add the content of bash_profile to your .bash_profile

## Team

![Team](https://raw.githubusercontent.com/MetaArivu/k8s-workshop/master/diagrams/K8s-Workshop-Team.jpg)

Copyright 2021, Apach 2 License
