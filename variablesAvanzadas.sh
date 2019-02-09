##Variables especiales

echo $# ### contiene el numero de parametros recibidos por script o funcion
##Regresa una cadena
 ##separador internal field separator
#IFS=',' ###El numero de variables se separará por , 
echo "$*" ##Separa argumetnos con ifs 

echo "$@"   ##Regresa argumentos separados por un espacio
###Sin las comillas no hay diferencia 
##Y paraceria que tampoco con ellas, pero si las hay

function Args
{
    echo "Pasados $# argumentos"
    echo "$*"
    echo "$@"
}
Args $*
Args $@
##Lammar así variablesAvanzadas 2 "Que3 honda" "Que pez"
##Ya que se pierden las comillas, y se interpreta todo como una cadena
### 4 argumentos pasados
Args "$*" ###una sola palabra
Args "$@" ##Mantiene el orden

#siempre entrecomillar $*, $@
##"$@" Es recomendable para pasar todos los argumentos a una funcion

##Seguir con control