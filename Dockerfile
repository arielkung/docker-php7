FROM php

RUN apt-get update -yqq

RUN apt-get install -yqq git libcurl4-gnutls-dev libicu-dev libmcrypt-dev libvpx-dev libjpeg-dev libpng-dev libxpm-dev zlib1g-dev libfreetype6-dev libxml2-dev libexpat1-dev libbz2-dev libgmp3-dev libldap2-dev unixodbc-dev libpq-dev libsqlite3-dev libaspell-dev libsnmp-dev libpcre3-dev libtidy-dev

RUN docker-php-ext-install mbstring mcrypt pdo_mysql curl json intl gd xml zip bz2 opcache

RUN pecl install xdebug && echo "zend_extension=/usr/local/lib/php/extensions/no-debug-non-zts-20151012/xdebug.so"  > /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
