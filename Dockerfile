#Build php
FROM php:7.1-fpm-alpine

#Install php extensions
RUN docker-php-ext-install bcmath

# Install Composer
ADD https://getcomposer.org/download/1.8.4/composer.phar /usr/local/bin/composer
RUN chmod +rx /usr/local/bin/composer

RUN composer global require aws/aws-sdk-php

WORKDIR /srv/app
