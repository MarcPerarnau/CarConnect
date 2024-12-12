# Scripts para la instalación y configuración del proyecto

Este directorio contiene varios scripts que facilitan la instalación, configuración y mantenimiento del proyecto. A continuación, se describen los scripts disponibles y las instrucciones sobre cómo ejecutarlos.

## Scripts Disponibles

### 1. **`instalacion_mysql.sh`**
   - **Descripción**: Este script instala MySQL Server en una máquina con Ubuntu. Asegura que MySQL esté correctamente instalado y configurado, habilitando el inicio automático y ejecutando el script de seguridad para mejorar la configuración.
   - **Acciones realizadas**:
     - Actualiza los repositorios del sistema.
     - Instala MySQL Server.
     - Inicia MySQL si no está en ejecución.
     - Ejecuta el script de seguridad de MySQL para configurar la contraseña del usuario `root` y otras opciones de seguridad.
     - Habilita MySQL para que se inicie automáticamente con el sistema.
   - **Requisitos previos**: El script debe ejecutarse en una máquina con Ubuntu. Asegúrate de tener permisos de sudo.
   - **Cómo ejecutarlo**:
     1. Descarga el script a tu servidor o máquina local.
     2. Abre una terminal y navega a la carpeta donde guardaste el script.
     3. Da permisos de ejecución al script:
        ```bash
        chmod +x instalar_mysql.sh
        ```
     4. Ejecuta el script con privilegios de administrador:
        ```bash
        sudo ./instalar_mysql.sh
        ```

### 2. **`instalacion_webmin.sh`**
   - **Descripción**: Este script instala Webmin en un sistema Ubuntu. Webmin es una interfaz web de administración del sistema que permite gestionar diversos servicios de manera fácil y visual.
   - **Acciones realizadas**:
     - Actualiza los repositorios del sistema.
     - Instala las dependencias necesarias para Webmin.
     - Añade la clave GPG y el repositorio de Webmin.
     - Instala Webmin.
     - Inicia el servicio Webmin y lo configura para que se inicie automáticamente con el sistema.
   - **Requisitos previos**: El script debe ejecutarse en una máquina con Ubuntu. Se requiere acceso a internet para descargar los paquetes de Webmin. Asegúrate de tener permisos de sudo.
   - **Cómo ejecutarlo**:
     1. Descarga el script a tu servidor o máquina local.
     2. Abre una terminal y navega a la carpeta donde guardaste el script.
     3. Da permisos de ejecución al script:
        ```bash
        chmod +x instalar_webmin.sh
        ```
     4. Ejecuta el script con privilegios de administrador:
        ```bash
        sudo ./instalar_webmin.sh
        ```
     5. Una vez finalizada la instalación, accede a Webmin desde tu navegador utilizando:
        ```
        https://<tu_ip>:10000
        ```

### 3. **`instalacion_virtualmin.sh`**
   - **Descripción**: Este script instala Virtualmin en un sistema Ubuntu. Virtualmin es una interfaz web de administración de hosting que facilita la gestión de dominios, correos electrónicos, bases de datos y más.
   - **Acciones realizadas**:
     - Actualiza los repositorios del sistema.
     - Instala las dependencias necesarias.
     - Descarga el script de instalación oficial de Virtualmin.
     - Ejecuta el script para instalar Virtualmin.
     - Inicia el servicio de Webmin (utilizado por Virtualmin) y lo configura para que se inicie automáticamente con el sistema.
   - **Requisitos previos**: El script debe ejecutarse en una máquina con Ubuntu. Asegúrate de tener acceso a internet y permisos de sudo.
   - **Cómo ejecutarlo**:
     1. Descarga el script a tu servidor o máquina local.
     2. Abre una terminal y navega a la carpeta donde guardaste el script.
     3. Da permisos de ejecución al script:
        ```bash
        chmod +x instalar_virtualmin.sh
        ```
     4. Ejecuta el script con privilegios de administrador:
        ```bash
        sudo ./instalar_virtualmin.sh
        ```
     5. Una vez finalizada la instalación, accede a Virtualmin desde tu navegador utilizando:
        ```
        https://<tu_ip>:10000
        ```

### 4. **`cambiar_puerto_ssh.sh`**
   - **Descripción**: Este script cambia el puerto por defecto de SSH en un servidor Ubuntu. Permite aumentar la seguridad del servidor cambiando el puerto en el que el servicio SSH escucha.
   - **Acciones realizadas**:
     - Solicita al usuario un nuevo puerto para SSH.
     - Valida que el puerto esté dentro del rango permitido (1024-65535).
     - Modifica la configuración de SSH en el archivo `/etc/ssh/sshd_config`.
     - Abre el nuevo puerto en el firewall utilizando `ufw`.
     - Reinicia el servicio SSH para aplicar los cambios.
     - Verifica que el servicio SSH esté escuchando en el nuevo puerto.
   - **Requisitos previos**: El script debe ejecutarse en una máquina con Ubuntu. Se requiere acceso a sudo y a internet para realizar cambios en la configuración.
   - **Cómo ejecutarlo**:
     1. Descarga el script a tu servidor o máquina local.
     2. Abre una terminal y navega a la carpeta donde guardaste el script.
     3. Da permisos de ejecución al script:
        ```bash
        chmod +x cambiar_puerto_ssh.sh
        ```
     4. Ejecuta el script con privilegios de administrador:
        ```bash
        sudo ./cambiar_puerto_ssh.sh
        ```
     5. Una vez ejecutado, asegúrate de probar la nueva conexión SSH antes de cerrar esta terminal. Utiliza el siguiente comando para conectarte:
        ```bash
        ssh usuario@<tu_ip> -p <nuevo_puerto>
        ```

### 5. **`instalar_nginx.sh`**
   - **Descripción**: Este script instala y configura Nginx en una máquina con Ubuntu. Configura un servidor web básico para servir contenido estático en el puerto 80.
   - **Acciones realizadas**:
     - Actualiza los repositorios del sistema.
     - Instala Nginx.
     - Inicia Nginx y lo habilita para que se inicie automáticamente con el sistema.
     - Configura Nginx para servir contenido estático desde `/var/www/html`.
     - Abre el puerto 80 en el firewall utilizando `ufw`.
   - **Requisitos previos**: El script debe ejecutarse en una máquina con Ubuntu. Asegúrate de tener permisos de sudo.
   - **Cómo ejecutarlo**:
     1. Descarga el script a tu servidor o máquina local.
     2. Abre una terminal y navega a la carpeta donde guardaste el script.
     3. Da permisos de ejecución al script:
        ```bash
        chmod +x instalar_nginx.sh
        ```
     4. Ejecuta el script con privilegios de administrador:
        ```bash
        sudo ./instalar_nginx.sh
        ```
     5. Una vez ejecutado, accede a la página predeterminada de Nginx desde tu navegador utilizando:
        ```
        http://<tu_ip>
        ```

## Notas Importantes

- **Permisos**: Asegúrate de tener permisos de `sudo` en tu máquina para poder ejecutar los scripts correctamente.
- **Compatibilidad**: Los scripts han sido diseñados para ser ejecutados en un sistema operativo basado en Ubuntu. Si utilizas una distribución diferente, necesitarás ajustar los comandos según la documentación de tu sistema.
- **Seguridad**: Durante la ejecución de `instalar_mysql.sh`, se te pedirá configurar una contraseña para el usuario `root` de MySQL. Asegúrate de elegir una contraseña segura.
  
- **Acceso a Webmin y Virtualmin**: Ambos servicios se ejecutan en el puerto `10000`. Es posible que tu navegador te muestre una advertencia de seguridad debido a que Webmin y Virtualmin usan certificados SSL autofirmados. Acepta la advertencia para acceder a la interfaz.

## Contribuciones

Si deseas agregar nuevos scripts o mejorar los existentes, no dudes en crear un Pull Request. Asegúrate de probar los scripts en un entorno de desarrollo antes de hacer cambios en el entorno de producción.
