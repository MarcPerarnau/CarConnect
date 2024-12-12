#!/bin/bash

# Actualizar los repositorios
echo "Actualizando los repositorios del sistema..."
sudo apt update -y

# Instalar Nginx
echo "Instalando Nginx..."
sudo apt install nginx -y

# Iniciar Nginx y habilitarlo para que inicie automáticamente con el sistema
echo "Iniciando Nginx y habilitando el inicio automático..."
sudo systemctl start nginx
sudo systemctl enable nginx

# Verificar si Nginx está corriendo
echo "Verificando si Nginx está corriendo..."
sudo systemctl status nginx

# Configuración básica de Nginx
echo "Configurando Nginx para servir contenido estático..."
sudo echo "server {
    listen 80 default_server;
    listen [::]:80 default_server;
    
    root /var/www/html;
    index index.html index.htm index.nginx-debian.html;
    
    server_name _;

    location / {
        try_files \$uri \$uri/ =404;
    }
}" > /etc/nginx/sites-available/default

# Comprobar la configuración de Nginx
echo "Verificando la configuración de Nginx..."
sudo nginx -t

# Recargar Nginx para aplicar la configuración
echo "Recargando Nginx para aplicar la configuración..."
sudo systemctl reload nginx

# Abrir el puerto 80 en el firewall (si está activado)
echo "Abriendo el puerto 80 en el firewall..."
sudo ufw allow 'Nginx HTTP'
sudo ufw reload

# Mostrar estado final de Nginx
echo "La instalación y configuración de Nginx ha finalizado."
echo "Puedes acceder a la página predeterminada de Nginx desde tu navegador utilizando http://<tu_ip>"
echo "https://github.com/MarcPerarnau (DevLab's)"