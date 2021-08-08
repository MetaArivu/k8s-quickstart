#################################################################
#
# K8s Workshop - Developer Tool box to test Pods in Kubernetes
#
# (C) MetaMagic Global Inc, NJ, USA, 2018
#
# Arivu Services & Containers - Apache 2
#
# Version 0.1
#################################################################
FROM metamagic/alpine:latest

MAINTAINER Araf Karsh Hamid <araf.karsh@metamagic.in>

RUN apk add --no-cache apache2 && \
           mkdir -p /run/apache2 

# Copy Starting page for Apache 2
COPY site /var/www/localhost/htdocs/

# Apache 2 on Port 80
EXPOSE 80

# Run Apache2
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
