#!/bin/bash

while true; do
    clear
    echo "CHARQUITO"
    echo
    sleep 1
    echo "La red social de Bash"
    echo
    read -p "¿Necesitas iniciar sesión? (S/N): " log

    case $log in
        [Ss]*)
            read -p "¿Tienes cuenta? (S/N): " paps
            case $paps in
                [Ss]*)
                    clear
                    bash login.sh
                    ;;
                [Nn]*)
                    clear
                    bash signup.sh
                    ;;
                *)
                    echo "¡Ups! ¿Qué pasó?"
                    sleep 2
                    ;;
            esac
            ;;
        [Nn]*)
            echo "¡Ok! Nos vemos luego."
            sleep 3
            poweroff
            ;;
        ELOY)
            echo "Cargando..."
            sleep 2
            echo -n "............"
            sleep 0.5
            echo -n "............"
            sleep 0.5
            echo -n "............"
            sleep 0.5
            clear
            bash sexo.sh
            ;;
        *)
            echo "¿Qué? No entendí."
            sleep 1
            ;;
    esac
done

