#!/bin/bash
let intentos=10
let solucion=$RANDOM%100

while ((intentos!=0))##Hacemos menor intentos
do
    read -p "Ingrese un numero: " numero
    if ((numero==solucion));then
        echo "acertaste, $solucion"
        exit
    elif ((numero<solucion)); then
        echo "Es mayor"
    else
        echo "Es menor"
    fi
    ((intentos--))
done
echo "Perdiste, se superaron los 10 intentos"

####Se te acabaron los codigos, hora de improvisar 