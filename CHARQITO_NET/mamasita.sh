#!/bin/bash
while true
do
clear
echo CHARQUITO
echo
sleep 1
echo la red social de bash
echo
echo -n " necesitas iniciar sesion. quieres iniciar sesion? (S/N) : "
read log
case $log in
S)
	echo -n "tienes cuenta, manito? (S/N)"
	read paps
	case $paps in
		S)
		clear
			bash login.sh
			;;
		N)
		clear
			bash signup.sh
			;;
		*)
                echo UIUIUI QUE TAS COLAO
                sleep
			mkdir $paps
			;;
	esac
;;
N)
	echo ok xd
	sleep 3.69
	poweroff
;;

ELOY)
	sleep 4
	echo -n cargando
	sleep 0.7
	echo -n .
	sleep 1.3
	echo -n .
	sleep 1.95
	echo -n .
	sleep 2.46
	echo -n .
	sleep 0.2
	echo -n . 
        sleep 0.2
	echo -n . 
        sleep 0.2
	echo -n . 
        sleep 0.2
	echo -n . 
        sleep 0.2
	echo . 
        sleep 0.2
	echo . 
        sleep 0.2
	echo . 
        sleep 0.2
	echo . 
        sleep 0.2
	echo . 
        sleep 0.2
	echo . 
        sleep 0.2
	echo . 
	sleep 0.01
	echo .
        sleep 0.01
        echo .
        sleep 0.01
        echo .
        sleep 0.01
        echo .
        sleep 0.01
        echo .
        sleep 0.01
        echo .
        sleep 0.01
        echo .
        sleep 0.01
        echo .
        sleep 0.01
        echo .
        sleep 0.01
        echo .
        sleep 0.01
        echo .
        sleep 0.01
        echo .
        sleep 0.01
        echo .
        sleep 0.01
        echo .
        sleep 0.01
        echo .
        sleep 0.01
        echo .
        sleep 0.01
        echo .
        sleep 0.01
        echo .
        sleep 0.01
        echo .
        sleep 0.01
        echo .
        sleep 0.01
        echo .
        sleep 0.01
        echo .
        sleep 0.01
        echo .
        sleep 0.01
        echo .
        sleep 0.01
        echo .
        sleep 0.01
        echo .
        sleep 0.01
        echo .
        sleep 0.01
        echo .
        sleep 0.01
        echo .
        sleep 0.0001
        echo .
        sleep 0.0001
        echo .
        sleep 0.0001
        echo .
        sleep 0.0001
        echo .
        sleep 0.0001
        echo .
        sleep 0.0001
        echo .
        sleep 0.0001
        echo .
        sleep 0.0001
        echo .
        sleep 0.0001
        echo .
        sleep 0.0001
        echo .
        sleep 0.0001
        echo .
        sleep 0.0001
        echo .
        sleep 0.0001
        echo .
        sleep 0.0001
        echo .
        sleep 0.0001
        echo .
        sleep 0.0001
        echo .
        sleep 0.0001
        echo .
        sleep 0.0001
        echo .
        sleep 0.0001
        echo .
        sleep 0.0001
        echo .
        sleep 0.0001
        echo .
        sleep 0.0001
        echo .
        sleep 0.0001
        echo .
        sleep 0.0001
        echo .
        sleep 0.0001
        echo .
        sleep 0.0001
        echo .
        sleep 0.0001
        echo .
        sleep 0.0001
        echo .
        sleep 0.0001
        echo .
        sleep 0.0001
        echo .
        sleep 0.0001
        clear
        bash sexo.sh
	;;

*)
	echo puta mare aixó que es?
	sleep 0.75
	echo presiona enter para  salir
	read 
	clear
	exit
	;;
esac
done
