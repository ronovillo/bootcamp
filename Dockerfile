FROM php:7.0-apache

RUN a2dissite 000-default.conf

COPY 000-default.conf /etc/apache2/sites-available/

RUN rm -r /var/www/html

COPY ./codigo /var/www

WORKDIR /var/www

EXPOSE 3306

EXPOSE 80

RUN a2ensite 000-default.conf

RUN service apache2 reload