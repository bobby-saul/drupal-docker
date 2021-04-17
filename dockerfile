FROM php:7.4-apache
# Enable rewrite
RUN a2enmod rewrite
# Install git and packages for php extensions
RUN apt update && apt install -y \
    git \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    libpq-dev \
    libzip-dev \
  && docker-php-ext-configure gd --with-freetype --with-jpeg \
  && docker-php-ext-install -j$(nproc) \
		gd \
		opcache \
		pdo_mysql \
    pdo_pgsql \
		zip
# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
# Install drupal
RUN cd /var/www && \
  composer create-project drupal/recommended-project drupal && \
  rm -rf html && \
  ln -sf drupal/web/ html \
  && chown -R www-data:www-data drupal/web/