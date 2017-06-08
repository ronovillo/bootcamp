FROM php:7.0-apache

RUN a2dissite 000-default.conf

COPY 000-default.conf /etc/apache2/sites-available/

COPY ./codigo /var/www

WORKDIR /var/www

RUN a2ensite 000-default.conf

