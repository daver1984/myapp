# Usar la imagen base de Debian
FROM debian:latest

# Instalar Apache
RUN apt-get update && apt-get install -y apache2

# Copiar el archivo HTML a la carpeta de Apache
COPY index.html /var/www/html/

# Exponer el puerto 80
EXPOSE 80

# Comando para ejecutar Apache en primer plano
CMD ["apachectl", "-D", "FOREGROUND"]