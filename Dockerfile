FROM dunglas/frankenphp:1.4.2-php8.4.3

WORKDIR /app

COPY . /app

RUN apt update && \
    apt install zip libzip-dev -y && \
    docker-php-ext-install zip && \
    docker-php-ext-enable zip

COPY --from=composer:2.8.5 /usr/bin/composer /usr/bin/composer

RUN composer install