FROM php:7.0-apache

COPY 000-default.conf /etc/apache2/sites-available

COPY . /var/wwww