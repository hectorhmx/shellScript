
#while comando
#do
#   ...
#done


function ciclo
{
    contador=0
    while [ $contador -lt 10 ]; do
        echo "El contador es $contador"
        let contador=contador+1
    done 
    echo 'El contador es $contador'
}
ciclo

##while aritmetico
#ir a aleatorio