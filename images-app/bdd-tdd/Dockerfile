#################################################################
#
# PodShell - Developer Tool box to test Pods in Kubernetes
#
# (C) MetaMagic Global Inc, NJ, USA, 2017
#
# Desire3D Micro Services Containers - Tomcat
#
# Version 0.1
#################################################################
# Base Version
FROM metamagic/java:8

LABEL author="Araf Karsh Hamid <araf.karsh@metamagic.in>"

RUN mkdir /Softwares/apps/
RUN mkdir /Softwares/apps/order

# Copy Tomcat (Install)
COPY --chown=arivu:arivu *.jar /Softwares/apps/order/
RUN chmod -R 750 /Softwares/apps/*

# Expose Order Service Port
EXPOSE 9010

# Start Order Service
ENTRYPOINT ["java","-jar","/Softwares/apps/order/ms-order-service-0.8.0.jar"]

