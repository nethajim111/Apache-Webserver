
FROM ubuntu:latest

MAINTAINER  Nethaji

RUN apt-get update && apt-get install -y apache2 libapache2-mod-jk && a2enmod jk

COPY  sites/000-default.conf  /etc/apache2/sites-available/

COPY conf/workers.properties  /etc/libapache2-mod-jk/

COPY conf/jk.conf /etc/apache2/mods-available/jk.conf

ADD  htdocs/* /var/www/html/

EXPOSE 80 443 

CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
