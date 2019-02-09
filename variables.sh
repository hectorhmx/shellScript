##Variables son de tipo cadena de caracteres por defecto

##tambien pueden haber otros tipos

var1="5" ###Declarar variables igual debe ir pegado

#var1 = "6" ##Error

echo $var1 ##Acceder a su contenido

##Entre comillado fuerte vs entrecomillado debil
echo "Variable2: $var1" ##Si se encuentran dentro de doble comilla, se expande la variable
echo 'Variable2: $var1' #no se expande

echo "${var1}3" ##Esta forma de expander evita ambiguedades
echo "$var13" ##cadena vacía 

#ver el tamaño  de una cadena
echo "${#var1}"

###Guardar la salida de un comando en una variable
casa=$(ls $HOME)
echo $casa

#ir a casa
cd 
ip a > ips

misIP=$(<ips)
echo "$misIP"
###Crearemos un archivo en home, llamado ips 

#Variables con tipos, no existian en las primeras shell

#declare -opcion nombre[=valor]
#opciones:
#-a  array
#-i tipo entero
#-r variable solo lectura
#-x exporta la variable

Ej:

var1=1
var2=2
var3=$var1+$var2
echo $var3

unset var1
unset var2
unset var3

declare -i var1=1
declare -i var2=2
declare -i var3=$var1+$var2
echo $var3

var4="hola"
declare -i var5=5

##saber el tipo de una variable y su valor 
res1=$(declare -p var4)
res2=$(declare -p var5)
echo $res1
echo $res2


##Expresiones aritmeticas1

##let = "expresion" 
let a="1 + 2" #expresiones tipo c
echo $a
let a="a += 1" ##si puede llevar espacios dentro de las comillas
echo $a

##Expresiones aritmeticas 2
declare -i b=$((1+1)) ###Entero tal cual
echo "B = $b"


###Variable especial $?
echo "hola mundo"
echo "El codigo de salida del anterior comando fue $?" 
cd NoExisto
echo "El codigo de salida del anterior comando fue $?" 

### Por lo general, 0 correcto, del 1 al 255 error
##Esta variable debe ser leida justo después de ejecutar el comadno

#seguir con funciones