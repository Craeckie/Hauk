FROM    php:apache
COPY    backend-php/ /var/www/html/
COPY    frontend/ /var/www/html/

RUN     apt-get update && \
        apt-get upgrade -y libmemcached-dev zlib1g-dev && \
        pecl install memcached && \
        docker-php-ext-enable memcached

EXPOSE  80/tcp
VOLUME  /etc/hauk
