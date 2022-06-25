#########################################
#
# (C) MetaMagic Global Inc, NJ, USA, 2022
#
# Arivu Services & Containers
#
# Version 0.2
#
#########################################
# Alpine Base Version
FROM ubuntu:latest

LABEL author="Araf Karsh Hamid <araf.karsh@metamagic.in>"

#RUN apk update && apk add bash && apk add vim && apk add nano

# Install SSL Certificates
#RUN apk add ca-certificates && rm -rf /var/cache/apk/*

# Create Software Directories
RUN mkdir -p /Softwares
RUN chmod -R 750 /Softwares

# Add user
RUN groupadd poduser
RUN useradd -u 1500 -g poduser -G root -s /bin/bash poduser

COPY --chown=poduser:poduser .bashrc /home/poduser/

RUN chown poduser:poduser /Softwares
RUN chown poduser:poduser /home/poduser/

WORKDIR /home/poduser

# Run the Container as poduser only for SW Containers
#USER poduser

CMD /bin/bash
