#!/bin/bash

while true; do
    clear
    echo "Bienvenidxxx al modo secreto"
    echo
    sleep 1.123456789
    echo
    echo
    echo "Estas son las opciones:"
    echo
    echo "a. INFO"
    echo "b. MANUELA"
    echo
    echo "1. Usuarios"
    echo
    echo "2. Crear scripts"
    echo
    echo "3. +Transaccionar+"
    echo
    echo "4. Desactivar modo"
    echo
    sleep 2.1
    echo -n "Elige una opción:: "
    read opcion
    echo
    echo

    case $opcion in
        a)
            clear
            echo "Este exclusivo modo, reservado solo para aquellos que tienen las llaves digitales adecuadas, te permite explorar un universo de funciones avanzadas que normalmente están fuera del alcance del usuario común."
            sleep 1
            echo "Y YA ESTARÍA, NANO."
            sleep 0.69
            echo "Presiona Enter para salir"
            read
            clear
            ;;
        b)
            clear
                sleep 1.2
    echo jeff: ay dios mio
    sleep 1
    echo jeff: ay DIOS MIO
    sleep 1
    echo jeff: AY DIOS-
    echo toc
    sleep 0.3
    echo toc
    sleep 0.3
    echo toc
    sleep 1
    echo jeff: quien es?
    sleep 1
    echo clarence: soy clarence
    sleep 1
    echo jeff: clarence estoy ocupado
    sleep 1
    echo clarence: que es ese ruido, jeff?
    sleep 1
    echo jeff: clarence ya te-
    sleep 0.12
    echo +abre la puerta xd+
    sleep 0.1
    echo jeff: CLARENCE QUE?!?!? NO!!
    sleep 1.2
    echo clarence: JEFF QUE ESTAS HACIENDO!
    sleep 1
    echo jeff: no!nada!1
    sleep 1
    echo clarence: hhhhh!!! CON LA FOTTO DE LA MISS BAKER!1 QUE DEMONIIOS MALDITO PERVERTIDO!
    sleep 1
    echo clarence : SUMO!
    sleep 1
    echo clarence: SUMO!!
    sleep 1
    echo jeff: NO!NO LLAMESS A SUMO!
    sleep  1
    echo sumo: que pasa-
    sleep 0.4
    echo sumo: hhhhhhh!
    sleep 1.2
    echo sumo: JEFF QUE ESTAS HACIENDO... CON LA FOTO DE LA MISS BAKER!
    sleep 1
    echo jeff: MALDITO PAJERO!!!!!!!!
    sleep 0.7
    echo jeff:nonono por favor!!!
    sleep 0.01
    echo +MOVIL hace foto+
    sleep 1
    echo jeff: CLARENCCE QUE ESTAS HACIENDO!?!?!:
    sleep 1
    echo clarence: lo voy a subir al feisbuk +emoji de la carita del demonio+
    sleep 0.5
    echo clarence: ji
    sleep 0.12
    echo clarence: ji
    sleep 1.7
    echo jeff: NO CLARENCE!
    sleep 1
    echo  clarence: ya te etiquete jijijija
    sleep 1
    echo jeff: HIJO DE PU-
    sleep 0.2
    clear
    echo XD musica pvz remix
    sleep 5
    clear
            ;;
        1)
            # Loading user mode
            bash opt1.sh
            clear
            ;;
        2)
            clear
            # Creating script
            echo "Inserta el nombre del script"
            echo
            echo -n "Nombre: "
            read script_name
            touch "$script_name.sh"
            echo
            sleep 1
            echo "Cargando script..."
            echo "#!/bin/bash" >> "$script_name.sh"
            sleep 2
            nano "$script_name.sh"
            ;;
        3)
            bash bragas.sh
            ;;
        4)
            clear
            echo -n "¿Seguro, salir? (S/N): "
            read respuesta
            case $respuesta in
                [Ss]*)
                    echo "OK xd"
                    sleep 3
                    bash mamasita.sh
                    ;;
                [Nn]*)
                    echo "Perfecto, volvamos"
                    sleep 3
                    echo "Presiona Enter para volver"
                    read
                    clear
                    ;;
                *)
                    echo "¿ixo que es"
                    sleep 1
                    echo "Presiona Enter para volver"
                    read
                    clear
                    ;;
            esac
            ;;
        *)
            echo "ixo que es?"
            sleep 1
            ;;
    esac
done
