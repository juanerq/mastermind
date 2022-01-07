#!/bin/bash

echo -n 'Deseas instalar el software [s/n]: '
read response

if [[ $response == [sS] ]]; then
	echo 'Instalando Software...'
elif [[ $response == [nN] ]]; then
	echo 'Adios :)'
else 
	echo 'Opción Invalida'
fi
