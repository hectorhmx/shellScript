#!/bin/bash
casa="DF"
tuCasa="DF"
#evalua codigos de salida, y si son == 0, se da como verdadero
###No siempre el codigo de salida == 0 significa que un comando fue exitoso
#if condicion
#then
    #sentencia
#elif condicion
#then    
    #sentencia
#else
    #sentencia
#fi


if mkdir hola; then
    echo "Se creo el directorio Hola"
elif rm -d hola; then
    echo "Se elimino el directorio" ##Añadir este al final
else
    echo "No se pudo crear ni destruir :B"
fi
### && and
## || or, pero en shortcut
###!not

##otra forma de hacer ifs, que nos permite evaluar condiciones

#if [ $var = $var2 ] #importante espacios
function irACasa
{
    if [ "$PWD" = "$HOME" ]
    then
        echo "Ya estabas en casa"
    else
        cd
        echo "Haz llegado a casa"
    fi
}
#irACasa


##comparaciones posibles
#Al comparar cadenas es recomendable expandirlas

## $star != $str2
## $str < $str2  lexicograficamente
## -n "$str"    #0  si es no nula'
## -z "$str"  #0 si es nula


##comparar cadenas como numeros
function CompararNums
{
    if [ $1 -lt $2 ] #le menor o igual
    then
        echo "$1 Es menor que"
    elif [ $1 -eq $2 ] #igual
    then
        echo "son iguales"
    elif [ $1 -gt $2 ] #ge greater or equal
    then
        echo "$1 es mayor"
    fi
    if [ $1 -eq $2 ] || [ $1 -ne $2 ]
    then
        echo "Este es el if menos especifico que veras"
    fi
}
#CompararNums "3" "3"
function ficheros
{
    if [ -a $1 ]
    then
        echo "El fichero existe"
    else
        echo "El fichero no existe"
    fi
    if [ -d $1 ]
    then
        echo "El fichero existe y es un directorio"
    else
        echo "el fichero no existe o no es un directorio"
    fi
    ###otros -x,-w ##permisos de escritura y lectura
}
#ficheros "." #"for.sh"
num=5
num2=5
if ((num == num2)); then
    echo "Son iguales"
fi

##Seguir con for