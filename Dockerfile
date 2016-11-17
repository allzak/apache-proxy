FROM eboraas/apache
MAINTAINER zaharov.prog@gmail.com

RUN apt-get update

RUN apt-get install -y libapache2-mod-proxy-html

RUN apt-get install -y libxml2-dev

RUN a2enmod proxy proxy_http

EXPOSE 80 443

VOLUME /var/www/html/

VOLUME /etc/apache2/sites-available/

#CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]