#!/bin/bash
while true
do
clear
# Definir la respuesta correcta
respuesta_correcta="sombra"

# Solicitar al usuario que descifre el acertijo para acceder
echo "Para ingresar, debes descifrar el enigma:"
echo "Todas las cosas tienen este, algunas tienen una, pero ninguna tiene dos. ¿Qué es?"

# Leer la respuesta del usuario
read -p "Tu respuesta: " respuesta_usuario

# Verificar si la respuesta es correcta
if [ "$respuesta_usuario" == "$respuesta_correcta" ]; then
    echo "¡Respuesta correcta! Bienvenido al charqito net."
    sleep 3
    bash tutta.sh
else
    echo "Respuesta incorrecta. No puedes pasar... por ahora."
    # Añadir un toque de misterio antes de volver a solicitar la respuesta
    sleep 3
    clear
    ./login.sh # Reemplaza "login.sh" con el nombre de tu script si es diferente
fi
done
