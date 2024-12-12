#!/bin/bash

# instalando las actualizaciones
echo "Instalando los repositorios....."
sudo apt update

echo "Actualizando los repositorios....."
sudo apt full-upgrade -y

# Instalando el paquete MySQL Server
echo "Instalando MySQL Server...."
sudo apt install -y mysql-server

# Verificar que esta corriendo 
echo "Verificando instalación...."
sudo systemctl status mysql

# Inicia MySQL si no está en ejecución
echo "Iniciando MySQL..."
sudo systemctl start mysql

# Asegura la instalación de MySQL (opcional, pero recomendable)
echo "Ejecutando el script de seguridad de MySQL..."
sudo mysql_secure_installation

# Activa MySQL para que inicie automáticamente con el sistema
echo "Habilitando MySQL para que se inicie automáticamente..."
sudo systemctl enable mysql

echo "La instalación de MySQL ha finalizado correctamente."
echo "https://github.com/MarcPerarnau (DevLab's)"