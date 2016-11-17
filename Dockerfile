FROM httpd:2.4.23
MAINTAINER zaharov.prog@gmail.com

RUN apt-get install libapache2-mod-proxy-html

RUN apt-get install libxml2-dev

RUN a2enmod proxy proxy_http

EXPOSE 80 443

VOLUME /var/www/html/

VOLUME /etc/apache2/sites-available/

CMD ["/run-apache.sh"]