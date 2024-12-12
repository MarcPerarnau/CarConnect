#!/bin/bash

# Actualiza los repositorios
echo "Instalando los repositorios..."
sudo apt update

echo "Actualizando los repositorios....."
sudo apt full-upgrade -y

# Instala las dependencias necesarias
echo "Instalando dependencias..."
sudo apt install -y wget apt-transport-https software-properties-common

# Añade la clave GPG de Webmin
echo "Añadiendo la clave GPG de Webmin..."
wget -q -O - https://pkg.webmin.com/webmin/gpg.key | sudo tee /etc/apt/trusted.gpg.d/webmin.asc

# Añade el repositorio de Webmin
echo "Añadiendo el repositorio de Webmin..."
echo "deb http://pkg.webmin.com/webmin/apt stable main" | sudo tee /etc/apt/sources.list.d/webmin.list

# Actualiza los repositorios nuevamente
echo "Actualizando repositorios con Webmin..."
sudo apt update

# Instala Webmin
echo "Instalando Webmin..."
sudo apt install -y webmin

# Inicia Webmin y habilita su inicio automático
echo "Iniciando Webmin..."
sudo systemctl start webmin
sudo systemctl enable webmin

# Verifica el estado de Webmin
echo "Verificando el estado de Webmin..."
sudo systemctl status webmin

echo "La instalación de Webmin ha finalizado correctamente."
echo "Accede a Webmin desde tu navegador utilizando la dirección: https://<tu_ip>:10000"
echo "https://github.com/MarcPerarnau (DevLab's)"
