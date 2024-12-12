#!/bin/bash

# Solicitar el nuevo puerto para SSH
echo "Introduce el nuevo puerto para SSH:"
read -p "Nuevo puerto SSH: " nuevo_puerto

# Verificar que el puerto ingresado sea un número válido
if ! [[ "$nuevo_puerto" =~ ^[0-9]+$ ]]; then
    echo "Error: El puerto debe ser un número."
    exit 1
fi

# Verificar que el puerto esté en el rango permitido (1-65535)
if [ "$nuevo_puerto" -lt 1024 ] || [ "$nuevo_puerto" -gt 65535 ]; then
    echo "Error: El puerto debe estar entre 1024 y 65535."
    exit 1
fi

# Cambiar el puerto en el archivo de configuración de SSH
echo "Cambiando el puerto SSH a $nuevo_puerto..."

# Editar la configuración de SSH
sudo sed -i "s/^#Port 22/Port $nuevo_puerto/" /etc/ssh/sshd_config
sudo sed -i "s/^Port 22/Port $nuevo_puerto/" /etc/ssh/sshd_config

# Habilitar el nuevo puerto en el firewall
echo "Abriendo el nuevo puerto en el firewall..."
sudo ufw allow $nuevo_puerto/tcp
sudo ufw reload

# Reiniciar el servicio SSH para aplicar los cambios
echo "Reiniciando el servicio SSH..."
sudo systemctl restart sshd

# Verificar si SSH está escuchando en el nuevo puerto
echo "Verificando que SSH esté escuchando en el puerto $nuevo_puerto..."
sudo netstat -tuln | grep ":$nuevo_puerto"

echo "El puerto SSH ha sido cambiado a $nuevo_puerto. Por favor, prueba la conexión SSH con el nuevo puerto."

# Mensaje de seguridad
echo "Recuerda probar la nueva conexión SSH antes de cerrar esta terminal."
echo "https://github.com/MarcPerarnau (DevLab's)"