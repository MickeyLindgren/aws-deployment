# Brug Ubuntu som base image
FROM ubuntu:latest

# Installer Apache
RUN apt update && apt install -y apache2 && apt clean

# Kopiér index.html fra repo til Apache's webroot
COPY index.html /var/www/html/index.html

# Åbn port 80 for HTTP
EXPOSE 80

# Start Apache i forgrunden
CMD ["apachectl", "-D", "FOREGROUND"]
