#!/bin/bash

menu() {
    clear
    echo "Bienvenido al menú de acciones extrañas"
    echo "1. Crear un archivo invisible"
    echo "2. Cambiar el nombre de todos los archivos a números aleatorios"
    echo "3. Escribir algo extraño en un archivo"
    echo "4. Borrar un archivo aleatorio"
    echo "5. Crear una carpeta llamada 'mundo_al_reves'"
    echo "6. Hacer que todos los archivos sean ejecutables"
    echo "7. Mover todos los archivos a una carpeta llamada 'caos'"
    echo "8. Cambiar la extensión de todos los archivos a '.weird'"
    echo "9. Comprimir todos los archivos en un archivo extraño"
    echo "10. Eliminar todas las vocales de los nombres de los archivos"
    echo "11. Copiar todos los archivos a una carpeta llamada 'caja_pandora'"
    echo "12. Crear un enlace simbólico llamado 'laberinto' a otro archivo"
    echo "13. Cambiar los permisos de todos los archivos a 000"
    echo "14. Desordenar todos los caracteres en los nombres de los archivos"
    echo "15. Crear un archivo con contenido cifrado extraño"
    echo "16. Convertir todos los archivos a minúsculas"
    echo "17. Cambiar la fecha de modificación de todos los archivos"
    echo "18. Escribir el nombre de cada archivo en reversa en un nuevo archivo"
    echo "19. Cambiar el propietario de todos los archivos a 'root'"
    echo "20. Salir"
    echo
    read -p "Por favor, seleccione una opción [1-20]: " opcion
}

accion_1() {
    touch /home/izaoricas/CHARQITO_NET/.archivo_invisible
    echo "¡Archivo invisible creado!"
}

accion_2() {
    for archivo in /home/izaoricas/CHARQITO_NET/*; do
        mv "$archivo" "/home/izaoricas/CHARQITO_NET/$RANDOM"
    done
    echo "¡Nombres de archivos cambiados a números aleatorios!"
}

accion_3() {
    echo "¡Este es un mensaje extraño y misterioso!" > /home/izaoricas/CHARQITO_NET/mensaje_extraño.txt
    echo "¡Mensaje extraño escrito en un archivo!"
}

accion_4() {
    archivos=(/home/izaoricas/CHARQITO_NET/*)
    if [ ${#archivos[@]} -gt 0 ]; then
        indice=$((RANDOM % ${#archivos[@]}))
        rm "${archivos[$indice]}"
        echo "¡Archivo aleatorio borrado!"
    else
        echo "No hay archivos para borrar en el directorio."
    fi
}

accion_5() {
    mkdir /home/izaoricas/CHARQITO_NET/mundo_al_reves
    echo "¡Carpeta 'mundo_al_reves' creada!"
}

accion_6() {
    for archivo in /home/izaoricas/CHARQITO_NET/*; do
        chmod +x "$archivo"
    done
    echo "¡Todos los archivos ahora son ejecutables!"
}

accion_7() {
    mkdir /home/izaoricas/CHARQITO_NET/caos
    mv /home/izaoricas/CHARQITO_NET/* /home/izaoricas/CHARQITO_NET/caos/
    echo "¡Todos los archivos movidos a la carpeta 'caos'!"
}

accion_8() {
    for archivo in /home/izaoricas/CHARQITO_NET/*; do
        mv "$archivo" "${archivo}.weird"
    done
    echo "¡Extensiones de archivos cambiadas a '.weird'!"
}

accion_9() {
    tar czf /home/izaoricas/CHARQITO_NET/archivos_extraños.tar.gz /home/izaoricas/CHARQITO_NET/*
    echo "¡Todos los archivos comprimidos en un archivo extraño!"
}

accion_10() {
    for archivo in /home/izaoricas/CHARQITO_NET/*; do
        nuevo_nombre=$(echo "$archivo" | tr -d 'aeiouAEIOU')
        mv "$archivo" "$nuevo_nombre"
    done
    echo "¡Vocales eliminadas de los nombres de los archivos!"
}

accion_11() {
    mkdir /home/izaoricas/CHARQITO_NET/caja_pandora
    cp -r /home/izaoricas/CHARQITO_NET/* /home/izaoricas/CHARQITO_NET/caja_pandora/
    echo "¡Todos los archivos copiados a la carpeta 'caja_pandora'!"
}

accion_12() {
    ln -s /some/other/file /home/izaoricas/CHARQITO_NET/laberinto
    echo "¡Enlace simbólico 'laberinto' creado!"
}

accion_13() {
    chmod 000 /home/izaoricas/CHARQITO_NET/*
    echo "¡Permisos de todos los archivos cambiados a 000!"
}

accion_14() {
    for archivo in /home/izaoricas/CHARQITO_NET/*; do
        nuevo_nombre=$(echo "$archivo" | fold -w1 | shuf | tr -d '\n')
        mv "$archivo" "$nuevo_nombre"
    done
    echo "¡Nombres de archivos desordenados!"
}

accion_15() {
    openssl rand -base64 32 > /home/izaoricas/CHARQITO_NET/archivo_cifrado.txt
    echo "¡Archivo con contenido cifrado extraño creado!"
}

accion_16() {
    for archivo in /home/izaoricas/CHARQITO_NET/*; do
        nuevo_nombre=$(echo "$archivo" | tr '[:upper:]' '[:lower:]')
        mv "$archivo" "$nuevo_nombre"
    done
    echo "¡Nombres de archivos convertidos a minúsculas!"
}

accion_17() {
    for archivo in /home/izaoricas/CHARQITO_NET/*; do
        touch -d "2 days ago" "$archivo"
    done
    echo "¡Fecha de modificación de todos los archivos cambiada!"
}

accion_18() {
    for archivo in /home/izaoricas/CHARQITO_NET/*; do
        nombre_reverso=$(echo "$archivo" | rev)
        echo "$nombre_reverso" > "/home/izaoricas/CHARQITO_NET/nombres_reversos.txt"
    done
    echo "¡Nombres de archivos escritos en reversa en un nuevo archivo!"
}

accion_19() {
    for archivo in /home/izaoricas/CHARQITO_NET/*; do
        chown root "$archivo"
    done
    echo "¡Propietario de todos los archivos cambiado a 'root'!"
}

ejecutar_accion() {
    case $opcion in
        1) accion_1 ;;
        2) accion_2 ;;
        3) accion_3 ;;
        4) accion_4 ;;
        5) accion_5 ;;
        6) accion_6 ;;
        7) accion_7 ;;
        8) accion_8 ;;
        9) accion_9 ;;
        10) accion_10 ;;
        11) accion_11 ;;
        12) accion_12 ;;
        13) accion_13 ;;
        14) accion_14 ;;
        15) accion_15 ;;
        16) accion_16 ;;
        17) accion_17 ;;
        18) accion_18 ;;
        19) accion_19 ;;
        20) echo "Saliendo..."; exit ;;
        *) echo "Opción inválida. Por favor, seleccione una opción válida." ;;
    esac
}

while true; do
    menu
    ejecutar_accion
    sleep 2
done
