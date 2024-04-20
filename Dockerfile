FROM --platform=linux/amd64 php:7.4-apache
WORKDIR /var/www/html
COPY . .
RUN apt-get update && \
    apt-get install -y libpng-dev && \
    docker-php-ext-install pdo pdo_mysql gd

# Start Apache when the container runs
CMD ["apache2-foreground"]
