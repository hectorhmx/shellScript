#!/bin/bash

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

directorios
