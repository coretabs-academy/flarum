FROM php:7.1.2-apache 
RUN docker-php-ext-install mysqli

RUN apt-get update && apt-get install -y libxml2-dev libxslt-dev sendmail libpng-dev
RUN docker-php-ext-install dom

RUN docker-php-ext-install mbstring
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install json

RUN docker-php-ext-install gd

RUN docker-php-ext-install fileinfo

WORKDIR /var/www/html
RUN a2enmod rewrite