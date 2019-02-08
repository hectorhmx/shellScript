###Formas de hacer funciones
### declare -f ver que funciones tenemos 
function funcion
{
    echo "hola mundo"
}
funcion

##Cshell
funcion2()
{
    echo "Hola mundo x2"

}
#unset -f funcion2 ##Permite eliminar una funcion
funcion2


#####Parametros posicionales ### reciben los argumentos de un script o de una funcion
##Accedemos de este modo $1 $2 $3 ... $n

###el parametro $0 tiene el nombre del script donde se ejecuta
### se diferencian separados por espacias
echo "Estoy en $0"
echo "Con los parametros $1 $2 $3"

function params
{
    echo "$0" ##nombre del script
    echo "parametros: $1 $2 $3"
}
params "hola" "mundo" "dos" 
#params "hola""mundo"dos #¿Que pasara?


###No se puede modificar el valor de las variables posicionales
function params2
{
    $1="hola" ###intentara ejecutar esa linea, cosa que no podrá 
    echo "$1"
}
params2 "adios"
#como solucionar esto?
#a=$1 ###si podemos modificar a 

##por defecto, los parámetros posicionales son locales al script o funcion 
##No se pueden acceder desde otra funcion

chmod 775 ./scriptSaluda.sh
./scriptSaluda.sh "Prebes"

##El resto de las vaariables que definimos son globales dentro del script
##Podemos hacer una variable local mediante:
local var="Valor"


###Resumen de scopes
var1="Global"

function Scopes
{
    echo $var1
    echo "$1" ##Pertenece al script, no podemos acceder a ella
    local var2="Local a la funcion"
    echo $var2
    var3="Tambien es global"
}
Scopes
echo $var1
echo $1
echo $var2 
echo $var3

##Tomar en cuenta
echo "$10" ###Espandira el 1 seguido de un 0
echo "${10}" ##Expandirá el 10 


###Seguir con variablesAvanzadas

