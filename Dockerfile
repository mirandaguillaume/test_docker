#Build php
FROM php:7.1-fpm-alpine

# Install Composer
ADD https://getcomposer.org/download/1.8.4/composer.phar /usr/local/bin/composer
RUN chmod +rx /usr/local/bin/composer

COPY conf/composer.json /home/root/.composer/composer.json

WORKDIR /srv/app
