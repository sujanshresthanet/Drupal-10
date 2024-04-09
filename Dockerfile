FROM drupal:10.1-php8.1-apache

# Start Apache
CMD ["apache2-foreground"]

# Install additional PHP extensions
RUN apt-get update && \
    apt-get install -y \
        git \
        unzip \
        && rm -rf /var/lib/apt/lists/*

# Copy custom configuration if needed
# COPY ./path/to/custom.conf /etc/apache2/sites-available/000-default.conf

# Install additional PHP extensions if needed
# RUN docker-php-ext-install gd

# Set the working directory
WORKDIR /var/www/html

# Copy Drupal settings file
COPY settings.php /var/www/html/sites/default/

# Expose port 80
EXPOSE 80

