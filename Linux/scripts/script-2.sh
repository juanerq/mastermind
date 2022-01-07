#!/bin/bash

# [ OPERADORES LOGICOS ]

# -gt greater than
# -ge greater or equal
# -lt lower than
# -le lower or equal
# -eq equal
# -ne not equal

# -a and
# -o or

# NOTA: Si se usan estos operadores logicos (-a, -o) es recomendable usar solo un []
# ya que los [[]] son para comparar cadenas de texto de una mejor manera


# [ CONDICIONALES ]

echo -n 'Deseas instalar el software [s/n]: '
read response

if [[ $response == [sS] ]]; then
	echo 'Instalando Software...'
elif [[ $response == [nN] ]]; then
	echo 'Adios :)'
else 
	echo 'Opción Invalida'
fi


# NOTA: Si se usan operadores logicos (-a, -o) es recomendable usar solo un []
# ya que los [[]] son para comparar cadenas de texto de una mejor manera
echo -n "Escribe un número: "
read valor

if [ $valor -lt 5 -o $valor -gt 10 ]; then
    echo "Tu numero está fuera  del rango [5, 10]"
else
    echo "Tu numero está en el rango [5, 10]"
fi

# [ BUCLE FOR ]
limit=5
for (( i = 0; i < $limit; i++ )); do
	echo $i
done

# [ PARAMETROS ] 
# Sintaxis: $#

echo "Numero de parametros recibidos: $#"
# Ejemplo: ./parametros.sh paramtro1 parametro2 parametro3
# Numero de parametros recibidos: 3

# Recibe solo un parametro: ./parametros.sh paramtro1 parametro2 
# paramtro1
echo $1 
# Recibe dos parametro: ./parametros.sh paramtro1 parametro2 
# paramtro1 parametro2 
echo $2
#...

# [ BUCLE FOR IN ]
# in - nos da el nombre de los ficheros o directorios
for f in $variable; do
	echo f
done



