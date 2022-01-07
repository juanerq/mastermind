#!/bin/bash

# Parametros
# 1. nombre fichero
# 2. tipo de fichero
# 3. numero de ficheros a crear
# 4. ruta

messageError() {
    echo $1
    exit 1
}

if [ $# -ne 4 ]; then
    echo 'Parametros requeridos:
1. nombre ficheros
2. tipo de fichero
3. numero de ficheros a crear
4. ruta de destino'
    exit 1
fi

if [ $3 -lt 1 ]; then
    messageError 'Error: El numero minimo de ficheros a crear es 1'
fi

if [ ! -d $4 ]; then
    messageError 'Error: La ruta especificada no es correcta'
fi

for (( i=1; i <= $3; i++ )); do
    name="$4/$1$i.$2"
    if [ $i -lt 10 ]; then
        name="$4/$10$i.$2"
    fi
    touch $name
done

echo "$3 Ficheros creados exitosamente"