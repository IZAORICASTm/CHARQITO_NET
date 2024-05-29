#!/bin/bash
while true
do
echo -n alguna pregunta?
sleep 0.5
echo
echo 1. porque lo has hecho solo?
sleep 0.5
echo 2. tiene source?
sleep 0.5
echo 3. asier es un pesao?
sleep 0.5
echo 4. ivan es un calvo?
sleep 0.5
echo 5. pues no, vamo al escript
read preg


case $preg in
  1)
    sleep 0.5
    echo "Por amor al arte y para demostrar que se"
    read
    clear
    ;;
  2)
    sleep 0.5
    echo "NO. NO tiene source, oño"
    read
    clear
    ;;
  3)
    sleep 0.5
    echo "Pues un pelin si"
    read
    clear
    ;;
  4)
    sleep 0.5
    echo "Pobre ivan, no le digais que es calvo, leches (un poquitin es, honestamente)"
    read
    clear
    ;;
  5)
    sleep 0.5
    echo "vamo al script va. a disfrutar y poner todo 10 (na mentira)"
    sleep 5
    clear
    bash mamasita.sh
    ;;
  *)
    echo "se supone que hay que marcar de 1 a 5, cazurro"
    read
    clear
    ;;
esac
done
