#FROM php:8.1-fpm
FROM php:8.1.10RC1-fpm-alpine3.15

# Install system dependencies
# RUN apt-get update && apt-get install -y \
#     git \
#     curl 
    # libpng-dev \
    # libonig-dev \
    # libxml2-dev \
    # zip \
    # unzip


RUN apk update && apk add \
    git \
    curl \
    icu-dev 


# Clear cache
# RUN apt-get clean 

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql intl mysqli
# RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

COPY ./ /var/fixed
# Set working directory
# WORKDIR /var/www
WORKDIR /var/fixed