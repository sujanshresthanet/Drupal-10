FROM drupal:10.1-php8.1-apache

# Copy custom configuration if needed
# COPY ./path/to/custom.conf /etc/apache2/sites-available/000-default.conf

# Install additional PHP extensions if needed
# RUN docker-php-ext-install gd

# Set the working directory
WORKDIR /var/www/html

# Expose port 80
EXPOSE 80

# Start Apache
CMD ["apache2-foreground"]
