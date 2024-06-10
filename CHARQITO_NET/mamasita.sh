#!/bin/bash

while true; do
    clear
    echo "CHARQUITO"
    echo
    sleep 1
    echo "La red social de Bash"
    echo
    read -p "Necesitas iniciar sesión, quieres iniciar sesion? (S/N): " log

    case $log in
        [Ss]*)
            read -p "¿Tienes cuenta, nano? (S/N): " paps
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
                    echo "¡uiuiuiui que tas colao!"
                    sleep 2
                    ;;
            esac
            ;;
        [Nn]*)
            echo "ok."
            sleep 3
            exit
            ;;
        ELOY)
        sleep 4
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
            echo "stiaputa aixo que es"
            sleep 1
            ;;
    esac
done

