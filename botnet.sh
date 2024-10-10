#!/bin/bash

echo "--BotNet Manager--"

if [ ! -f ips.txt ]; then
    echo "El archivo ips.txt no se encontró."
    exit 1
fi

execute_command() {
    while IFS= read -r ip; do
        echo "Conectando a $ip..."
        
        output=$(ssh -o StrictHostKeyChecking=no autentlock@$ip "$1" 2>&1)
        exit_code=$?

        if [ $exit_code -eq 0 ]; then
            echo "Comando ejecutado correctamente en $ip."
            echo "Salida: $output"
        else
            echo "Error al conectar o ejecutar el comando en $ip."
            echo "Salida de error: $output"
        fi
    done < ips.txt
}

while true; do
    read -p "Introduce el comando a ejecutar en las IPs: " command
    
    execute_command "$command"
    
    read -p "¿Deseas ejecutar otro comando? (s/n): " respuesta
    if [[ "$respuesta" != "s" && "$respuesta" != "S" ]]; then
        echo "Saliendo..."
        break
    fi
done
