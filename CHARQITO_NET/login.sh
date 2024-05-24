#!/bin/bash
while true; do
    clear

    # Definir las respuestas correctas
    respuestas_correctas=("sombra" "silencio" "reloj")

    # Seleccionar un acertijo aleatorio
    acertijo_index=$((RANDOM % ${#respuestas_correctas[@]}))
    respuesta_correcta=${respuestas_correctas[$acertijo_index]}

    # Solicitar al usuario que descifre el acertijo para acceder
    case $respuesta_correcta in
        sombra)
            echo "Acertijo 1:"
            echo "Todas las cosas tienen este, algunas tienen una, pero ninguna tiene dos. ¿Qué es?"
            ;;
        silencio)
            echo "Acertijo 2:"
            echo "Es más ligero que una pluma, pero incluso el más fuerte no puede sostenerlo por mucho tiempo. ¿Qué es?"
            ;;
        reloj)
            echo "Acertijo 3:"
            echo "Lo haces correr todo el día, lo haces correr todo el año, pero nunca puedes tocarlo. ¿Qué es?"
            ;;
        *)
            echo "Acertijo:"
            echo "Todas las cosas tienen este, algunas tienen una, pero ninguna tiene dos. ¿Qué es?"
            ;;
    esac

    # Leer la respuesta del usuario
    read -p "Tu respuesta: " respuesta_usuario

    # Verificar si la respuesta es correcta
    if [ "$respuesta_usuario" == "$respuesta_correcta" ]; then
        echo "¡Respuesta correcta! Bienvenido al Charqito Net."
        sleep 3
        bash tutta.sh
        exit 0
    else
        echo "Respuesta incorrecta. No puedes pasar... por ahora."
        # Añadir un toque de misterio antes de volver a solicitar la respuesta
        sleep 3
    fi
done
