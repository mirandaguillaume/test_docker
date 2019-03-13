#Build php
FROM php:7.1-fpm-alpine

# Install Composer
ADD https://getcomposer.org/download/1.8.4/composer.phar /usr/local/bin/composer
RUN chmod +rx /usr/local/bin/composer

#Install Supervisor
RUN apk add --no-cache supervisor

WORKDIR /srv/app

# Add user www-data
ARG UID
ARG GID
RUN apk add --no-cache shadow \
    && usermod -u $UID www-data \
    && chown -R $UID:$GID /srv/app
