#!/bin/bash

# Funció per crear un usuari
crear_usuari() {
    read -p "Introdueix el nom d'usuari: " usuari
    sudo adduser --allow-bad-names $usuari
read
}

# Funció per crear un grup
crear_grup() {
    read -p "Introdueix el nom del grup: " grup
    sudo groupadd $grup
read
}

# Funció per canviar el grup principal d'un usuari
canviar_grup_principal() {
    read -p "Introdueix el nom d'usuari: " usuari
    read -p "Introdueix el nou grup principal: " grup
    sudo usermod -g $grup $usuari
read
}

# Funció per afegir un usuari a un grup
afegir_usuari_grup() {
    read -p "Introdueix el nom d'usuari: " usuari
    read -p "Introdueix el nom del grup: " grup
    sudo usermod -aG $grup $usuari
read
}

# Funció per canviar els permisos d'un fitxer o directori
canviar_permisos() {
    read -p "Introdueix el camí del fitxer o directori: " fitxer
    read -p "Introdueix els permisos (per exemple, 755): " permisos
    sudo chmod $permisos $fitxer
read
}

# Funció per canviar el propietari d'un fitxer o directori
canviar_propietari() {
    read -p "Introdueix el camí del fitxer o directori: " fitxer
    read -p "Introdueix el nou propietari: " usuari
    sudo chown $usuari $fitxer
read
}

# Funció per canviar el grup propietari d'un fitxer o directori
canviar_grup_propietari() {
    read -p "Introdueix el camí del fitxer o directori: " fitxer
    read -p "Introdueix el nou grup propietari: " grup
    sudo chown :$grup $fitxer
read
}

# Funció per crear estructura a partir d'un fitxer de configuració
crear_estructura() {
    read -p "Introdueix el camí del fitxer de configuració: " config_file
    if [ ! -f $config_file ]; then
        echo "El fitxer de configuració no existeix."
        return
    fi
read
    # Llegir el fitxer de configuració
    grup_principal=""
    grups_secundaris=()
    declare -A usuaris_grups

    while IFS= read -r line
    do
        if [[ $line == GP:* ]]; then
            grup_principal=$(echo $line | cut -d':' -f2 | tr -d ' ')
        elif [[ $line == GS:* ]]; then
            IFS=',' read -r -a grups_secundaris <<< $(echo $line | cut -d':' -f2 | tr -d ' ')
        elif [[ $line == *:* ]]; then
            usuari=$(echo $line | cut -d':' -f1 | tr -d ' ')
            grups=$(echo $line | cut -d':' -f2 | tr -d ' ' | tr ',' ' ')
            usuaris_grups[$usuari]=$grups
        fi
    done < $config_file
read
    # Crear grup principal
    sudo groupadd $grup_principal
    sudo mkdir -p /home/$grup_principal
    sudo chmod 770 /home/$grup_principal
    sudo chgrp $grup_principal /home/$grup_principal
read
    # Crear grups secundaris i carpetes corresponents
    for grup in "${grups_secundaris[@]}"; do
        sudo groupadd $grup
        sudo mkdir -p /home/$grup_principal/$grup
        sudo chmod 770 /home/$grup_principal/$grup
        sudo chgrp $grup /home/$grup_principal/$grup
    done
read
    # Crear usuaris i afegir-los als grups
    for usuari in "${!usuaris_grups[@]}"; do
        sudo adduser --home /home/$usuari --ingroup $grup_principal --disabled-password --gecos "" --allow-bad-names $usuari
        for grup in ${usuaris_grups[$usuari]}; do
            sudo usermod -aG $grup $usuari
        done
    done
    echo "Estructura creada correctament a partir del fitxer de configuració."
}
read
# Menú principal
while true; do
clear
    echo "AdminScript:"
    echo "1. Crear usuari."
    echo "2. Crear grup."
    echo "3. Canviar grup principal de l'usuari."
    echo "4. Afegir usuari al grup."
    echo "5. Canviar permisos del fitxer o directori."
    echo "6. Canviar usuari propietari del fitxer o directori."
    echo "7. Canviar grup propietari del fitxer o directori."
    echo "8. Crear estructura a partir d'un fitxer de configuració."
    echo "9. Eixir."
    read -p "Selecciona una opció [1-9]: " opcio

    case $opcio in
        1) crear_usuari ;;
        2) crear_grup ;;
        3) canviar_grup_principal ;;
        4) afegir_usuari_grup ;;
        5) canviar_permisos ;;
        6) canviar_propietari ;;
        7) canviar_grup_propietari ;;
        8) crear_estructura ;;
        9) exit ;;
        *) echo "Opció no vàlida." ;;
    esac
done
