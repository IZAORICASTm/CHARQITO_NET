#!/bin/bash
while true
do
echo -n alguna pregunta?
read preg
sleep 0.5
echo 1. porque lo has hecho solo?
sleep 0.5
echo 2. tiene source?
sleep 0.5
echo 3. asier es un pesao?
sleep 0.5
echo 4. ivan es un calvo?
sleep 0.5 
echo 5. pues no, vamo al escript

case $preg in
  1)
    sleep 0.5
    echo "Por amor al arte y para demostrar que se"
    read
    ;;
  2)
    sleep 0.5
    echo "NO. NO tiene source, oño"
    read
    ;;
  3)
    sleep 0.5
    echo "Pues un pelin si"
    read
    ;;
  4)
    sleep 0.5
    echo "Pobre iva, no le digais que es calvo, leches"
    read
    ;;
  5)
    sleep 0.5
    echo "vamo al script va. a disfrutar y poner todo 10 (na mentira)"
    sleep 5
    bash mamasita.sh
    ;;
  *)
    echo "se supone que hay que marcar de 1 a 5, cazurro"
    read
    ;;
esac
done
