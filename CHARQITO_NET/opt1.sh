#!bin/bash
while true
do
    clear
    echo modo de usuarios
    echo
    sleep 1
    echo este  es el modo de usuarios
    sleep 3
    echo
    echo
    echo estas son las opciones:::
    sleep 1
    echo 1. crear usuarios
    echo
    echo 2. cambiar contraseñas
    echo
    echo 3. modificar caracteristicas de cuentas
    echo
    echo 4. borrar usuarios
    echo
    echo 5. crear grupos nuevos
    echo
    echo 6. borrar grupos
    echo
    echo 7. cambia el usuario y/o grupo propietario de ficheros
    echo
    echo 8. modificar permisos de ficheros
    echo
    echo 9. salir
    echo
    echo
    sleep 2
    echo
    echo -n Selecciona una opcion:_
    read opm
    case $opm in
    1)
    clear
        echo -n escribe el nombre del usuario:
            read usu
            echo creando usuario
            sleep 1.23
            echo .

            echo .

            echo .

        #useradd $usu
        echo -n usuario $usu creado

        sleep 2
        ;;
    2)
    clear
        echo -n escribe la nueva contraseña:
        read pas
        clear
        echo -n vuelve a escribir la nueva contraseña::
        read pas
        echo cambiando contraseña
        sleep 1.23
        echo .
        sleep 1.45
        echo .
        sleep 1.67
        echo .
        sleep 1.89
        #passwd $pas
        echo contraseña cambiada
        sleep 2
        ;;
    3)
        usermod
        ;;
    4)
        userdel
        ;;
    5)
        groupadd
        ;;
    6)
        groupdel
        ;;
    7)
        chown
        ;;
    8)
        chmod
        ;;
    9)
        echo saliendo
    esac
done
