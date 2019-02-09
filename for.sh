#!/bin/bash
###Es más un for each

function funcion1
{
	for i in 1 2 3 4 5;do
		echo $i
	done
	echo "Terminado"
}

function sec
{
	for i in $(seq 1 10);do
		echo $i

	done
	echo "Terminado"
}
function directorios ###listando directorios de home
{
	cd
	for i in *
	do
		if [ -d "$i" ]
		then
				echo "$i"
		fi
	done
}
#directorios

function argumentos
{
	###Delimitador al usar in será el definiddo en IFS
	for arg in "$@" ##Hay que usar ese por las separaciones
	do
		echo "Mensaje: $arg"
	done
}
#argumentos "Hola" "prebes" "tengo sueño" "son las 3 am" 

function ForAritmetico
{
	for((i=0;i<=5;i++))
	do
		echo "$i"
	done
}
ForAritmetico