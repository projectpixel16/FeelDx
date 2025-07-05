FROM php:8.2-fpm

# Install system dependencies and Node.js
RUN apt-get update && apt-get install -y \
    git curl zip unzip gnupg2 ca-certificates lsb-release \
    libonig-dev libxml2-dev libzip-dev libpng-dev \
    && docker-php-ext-install pdo_mysql mbstring zip exif pcntl \
    && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
    && apt-get install -y nodejs

# Install Composer
COPY --from=composer:2.6 /usr/bin/composer /usr/bin/composer

# Set working directory
WORKDIR /var/www

# Copy code
COPY . .

# Install backend dependencies
RUN composer install --no-interaction --prefer-dist --optimize-autoloader

# Install frontend dependencies and build assets
RUN npm install && npm run build

# Set correct permissions
RUN chown -R www-data:www-data /var/www

EXPOSE 8000
CMD ["php", "artisan", "serve", "--host=0.0.0.0", "--port=8000"]
