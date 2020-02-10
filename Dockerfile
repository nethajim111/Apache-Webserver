FROM ubuntu:latest

RUN apt-get update && apt-get install -y apache2 libapache2-mod-jk && a2enmod jk

CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
