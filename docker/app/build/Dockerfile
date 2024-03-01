FROM php:8.3-fpm

ARG user
ARG uid

#install system dependecies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

#install php extentions
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath 

# Install latest Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Create system user to run Composer and Artisan Commands
RUN useradd -G www-data,root -u $uid -d /home/$user $user
RUN mkdir -p /home/$user/.composer && \
    chown -R $user:$user /home/$user

#set working directory
WORKDIR /var/www

COPY ../../../composer.json ../../../composer.lock ./

RUN composer install --no-scripts --no-autoloader

COPY ../../ ./

RUN php artisan key:generate

# Set permissions for Laravel
RUN chown -R $user:www-data storage bootstrap/cache

USER $user
