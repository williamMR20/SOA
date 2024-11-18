# Usa la imagen base con PHP y Apache
FROM php:8.2-apache

# Establece el directorio de trabajo en el contenedor
WORKDIR /var/www/html

# Copia todos los archivos desde tu directorio actual al contenedor
COPY . /var/www/html

# Da permisos adecuados a los archivos
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Expone el puerto 80 para HTTP
EXPOSE 80

# Inicia el servidor Apache
CMD ["apache2-foreground"]