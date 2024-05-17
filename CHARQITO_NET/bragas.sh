#!/bin/bash

# Función para generar un número aleatorio basado en un texto
generate_number() {
    # Obtener el texto proporcionado como argumento
    input="$1"

    # Obtener el valor ASCII total del texto
    total=0
    for ((i=0; i<${#input}; i++)); do
        char="${input:$i:1}"
        ascii_val=$(printf "%d" "'$char")
        total=$((total + ascii_val))
    done

    # Usar el módulo para limitar el número dentro de un rango manejable
    max_range=100
    number=$((total % max_range))

    # Imprimir el número generado
    echo "Número generado basado en '$input': $number"
}

# Función para invertir un texto
reverse_text() {
    # Obtener el texto proporcionado como argumento
    input="$1"

    # Invertir el texto
    reversed=$(echo "$input" | rev)

    # Imprimir el texto invertido
    echo "Texto invertido: $reversed"
}

# Función para crear un documento de texto con símbolos aleatorios y un mensaje secreto divertido
create_corrupted_text() {
    # Nombre de archivo único basado en la fecha y hora actual
    filename="/home/izaoricas/CHARQITO_NET/PAPELERa/numeros_corruptos_$(date +%Y%m%d%H%M%S).txt"

    # Lista de símbolos aleatorios
    symbols=( "@" "#" "$" "%" "&" "*" "-" "+" "=" )

    # Abrir el archivo de texto
    touch "$filename"

    # Generar símbolos aleatorios
    for ((i=0; i<100; i++)); do
        echo -n "${symbols[$((RANDOM % ${#symbols[@]}))]}" >> "$filename"
    done

    # Agregar un mensaje secreto aleatorio
    echo "" >> "$filename"
    echo "Mensaje secreto: ¡Los patos dominarán el mundo!" >> "$filename"

    echo "Documento de texto con símbolos aleatorios y mensaje secreto generado: $filename"
}

# Función para mostrar el contenido de un documento aleatorio de la carpeta /home/izaoricas/CHARQITO_NET/yolo
show_random_document() {
    # Obtener un archivo aleatorio de la carpeta /home/izaoricas/CHARQITO_NET/yolo
    random_document=$(ls /home/izaoricas/CHARQITO_NET/yolo | shuf -n 1)

    # Mostrar el contenido del documento
    echo "Contenido del documento aleatorio '$random_document':"
    echo
    cat "/home/izaoricas/CHARQITO_NET/yolo/$random_document"
}

# Función para mostrar el menú
show_menu() {
    clear
    echo "Este script ha sido hecho con ChatGPT"
    echo
    echo "Menú:"
    echo "1. Generar número basado en texto"
    echo "2. Invertir un texto"
    echo "3. Crear documento de texto "
    echo "4. Mostrar contenido "
    echo "5. Salir"
    echo
}

# Ejecutar el menú
while true; do
    show_menu
    read -p "Seleccione una opción y presione Enter: " choice
    case $choice in
        1)
            read -p "Ingrese el texto y presione Enter: " text
            generate_number "$text"
            read -p "Presione Enter para volver al menú..."
            ;;
        2)
            read -p "Ingrese el texto a invertir y presione Enter: " text_to_reverse
            reverse_text "$text_to_reverse"
            read -p "Presione Enter para volver al menú..."
            ;;
        3)
            create_corrupted_text
            read -p "Presione Enter para volver al menú..."
            ;;
        4)
            show_random_document
            read -p "Presione Enter para volver al menú..."
            ;;
        5)
            clear
            echo "Saliendo..."
            sleep 1
            exit 0
            ;;
        *)
            echo "Opción no válida. Por favor, seleccione nuevamente."
            read -p "Presione Enter para volver al menú..."
            ;;
    esac
done
