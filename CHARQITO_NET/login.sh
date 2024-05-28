#!/bin/bash
while true; do
    clear

    # Definir las respuestas correctas y sus respectivos acertijos
    declare -A riddles
    riddles=(
        ["sombra"]="Todas las cosas tienen esto, algunas tienen una, pero ninguna tiene dos. ¿Qué es?"
        ["silencio"]="Es más ligero que una pluma, pero incluso el más fuerte no puede sostenerlo por mucho tiempo. ¿Qué es?"
        ["reloj"]="Lo haces correr todo el día, lo haces correr todo el año, pero nunca puedes tocarlo. ¿Qué es?"
        ["agua"]="Mientras más seca, más agua tiene. ¿Qué es?"
        ["viento"]="Vuela sin alas, llora sin ojos. ¿Qué es?"
        ["nada"]="Siempre está llegando, pero nunca llega. ¿Qué es?"
        ["nieve"]="Puedes encontrarlo en invierno y en las montañas, pero nunca se mantiene. ¿Qué es?"
        ["eco"]="Responde sin ser preguntado. ¿Qué es?"
        ["secreto"]="Lo guardas, pero cuando lo compartes, lo pierdes. ¿Qué es?"
        ["oscuridad"]="Siempre está detrás de ti y nunca podrás escapar de ella. ¿Qué es?"
        ["net"]="El charqito esta brut o net?"
    )

    # Seleccionar una respuesta aleatoria
    respuestas=("${!riddles[@]}")
    respuesta_correcta=${respuestas[$RANDOM % ${#respuestas[@]}]}

    # Solicitar al usuario que descifre el acertijo para acceder
    echo "Acertijo:"
    echo "${riddles[$respuesta_correcta]}"

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
