#Build php
FROM php:7.1-fpm-alpine

#Install php extensions
RUN apk add --no-cache git
RUN docker-php-ext-install bcmath

# Install Composer
ADD https://getcomposer.org/download/1.8.4/composer.phar /usr/local/bin/composer
RUN chmod +rx /usr/local/bin/composer

WORKDIR /srv/app
