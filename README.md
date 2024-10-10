# BotNet Manager

**BotNet Manager** es una herramienta sencilla que permite ejecutar comandos en múltiples dispositivos remotos a través de SSH, ideal para la administración centralizada de servidores o equipos en red. Este script lee una lista de direcciones IP desde un archivo `ips.txt`, se conecta a cada dispositivo utilizando autenticación basada en claves SSH y ejecuta los comandos proporcionados por el usuario.

### Características

- **Ejecución Remota de Comandos**: Permite ejecutar cualquier comando en dispositivos remotos a través de SSH.
- **Recolección de Resultados**: Captura y muestra la salida del comando ejecutado en cada dispositivo, lo que facilita la detección de errores o problemas.
- **Autenticación Segura**: Usa claves SSH para evitar el uso de contraseñas en texto claro, mejorando la seguridad del acceso remoto.

### Requisitos

- **Claves SSH**: La autenticación con claves SSH debe estar configurada. Asegúrate de que la clave pública del usuario `autentlock` esté en el archivo `~/.ssh/authorized_keys` de cada dispositivo remoto.
- **ips.txt**: Debes tener un archivo llamado `ips.txt` en el mismo directorio que el script. Este archivo debe contener una lista de direcciones IP, una por línea.

Ejemplo de `ips.txt`:
```
192.168.1.101
192.168.1.102
192.168.1.103
```
### Uso

1. Clona el repositorio o descarga el script.
2. Asegúrate de tener las claves SSH configuradas para los dispositivos remotos.
3. Crea un archivo `ips.txt` en el mismo directorio que el script.
4. Ejecuta el script:
```
   bash botnet_manager.sh
```
5. Introduce el comando que quieres ejecutar en los dispositivos remotos cuando se te solicite.

### Ejemplo de Uso
```
---BotNet Manager---
    -By S3RGI09-

Introduce el comando a ejecutar en las IPs: uptime
Conectando a 192.168.1.101...
Comando ejecutado correctamente en 192.168.1.101.
Salida: 15:05:35 up  3:25,  2 users,  load average: 0.15, 0.10, 0.05
Conectando a 192.168.1.102...
Comando ejecutado correctamente en 192.168.1.102.
Salida: 15:05:36 up  5:14,  1 user,  load average: 0.24, 0.22, 0.10
```
### Licencia

Este proyecto usa la MIT License, puedes verla en el archivo LICENSE, pero es una licencia muy permisiva, ¡Sientete libre de modificar y redistribuirlo!
