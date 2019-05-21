FROM php:7.2.5-fpm
RUN apt-get update && apt-get install -y mysql-client --no-install-recommends \
 && docker-php-ext-install pdo_mysql
RUN chown -R www-data:www-data /var/www
