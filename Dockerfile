# Brug en officiel Nginx base image
FROM nginx:latest

# Kopiér en test-side til Nginx-serveren
COPY index.html /usr/share/nginx/html/index.html

# Eksponér port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
