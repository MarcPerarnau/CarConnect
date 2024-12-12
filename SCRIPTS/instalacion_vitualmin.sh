#!/bin/bash

# Actualiza los repositorios
echo "Actualizando los repositorios..."
sudo apt update

# Instala las dependencias necesarias
echo "Instalando dependencias..."
sudo apt install -y wget curl software-properties-common apt-transport-https

# Descarga el script de instalación de Virtualmin
echo "Descargando el script de instalación de Virtualmin..."
wget http://software.virtualmin.com/gpl/scripts/install.sh -O /tmp/install.sh

# Da permisos de ejecución al script de instalación
echo "Dando permisos de ejecución al script..."
chmod +x /tmp/install.sh

# Ejecuta el script de instalación
echo "Ejecutando el script de instalación de Virtualmin..."
sudo /tmp/install.sh

# Elimina el script de instalación
echo "Eliminando el script de instalación..."
rm /tmp/install.sh

# Verifica el estado del servicio de Virtualmin
echo "Verificando el estado de Virtualmin..."
sudo systemctl status webmin

# Inicia Virtualmin si no está corriendo
echo "Iniciando Virtualmin..."
sudo systemctl start webmin
sudo systemctl enable webmin

echo "La instalación de Virtualmin ha finalizado correctamente."
echo "Accede a Virtualmin desde tu navegador utilizando la dirección: https://<tu_ip>:10000"
echo "https://github.com/MarcPerarnau (DevLab's)"