#!/bin/bash

if [ $# -ne 2 ]; then
    echo 'Parametros requeridos:
1. nombre del prefijo
2. ruta de las canciones'
    exit 1
fi

if [ ! -d $2 ]; then
    echo 'Error: La ruta no es correcta'
fi

for f in `ls $2`; do
    if [ -f $2/$f ]; then
        name=$2/$f
        newName=$2/$1$f
        mv $name $newName
        echo "$name -> $newName" | tr -s /
    fi
done