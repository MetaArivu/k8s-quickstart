#########################################
#
#
# (C) MetaMagic Global Inc, NJ, USA, 2021
#
# Arivu Services & Containers
#
# Version 0.1
#########################################
# Base Version
FROM metamagic/apache2

MAINTAINER Araf Karsh Hamid <araf.karsh@metamagic.in>

RUN mkdir -p /var/www/html/
RUN chmod -R 777 /var/www/html/
ADD omega /var/www/html/

# HTTP Port
EXPOSE 80

# Run Apache2
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
