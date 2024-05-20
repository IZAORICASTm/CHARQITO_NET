#!/bin/bash
clear
echo vamo a crear una cuenta, va
echo
echo
echo
sleep 1
echo escribe unn nombre de usuario, mano
echo
sleep 1
echo -n uhuario:
read usuario
mkdir /home/izaoricas/CHARQITO_NET/usuarios/$usuario
touch /home/izaoricas/CHARQITO_NET/usuarios/$usuario/$usuario.txt
    echo uhuario:$usuario >> /home/izaoricas/CHARQITO_NET/usuarios/$usuario/$usuario.txt
echo
echo
echo
echo ahora introduce una paswor, $usuario
sleep 1
echo
echo -n paswor:
read paswor
echo paswor:$paswor >> /home/izaoricas/CHARQITO_NET/usuarios/$usuario/$usuario.txt
echo espera un momento
sleep 1
echo .
sleep 1.25
echo .
sleep 1.5
echo .
sleep 2
echo usuario creao, manito
echo $usuario:$paswor>> /home/izaoricas/CHARQITO_NET/usuarios/todos_los_usuarios_registrados.txt
sleep 1
clear
