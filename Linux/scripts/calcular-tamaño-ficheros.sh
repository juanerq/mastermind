# -f comprobar si existe un fichero
# -d comprobar si existe un directorio
# !  negación - Ej: ! -f (si existe un fichero la salida es false)

# exit 0 - finaliza el proceso y todo ha salido bien
# exit 1 - finaliza el proceso y algo ha salido mal

# `` Sirve para guardar la salida de un comando - Ej: variable=`ls $1`

# tr -s / elimina los caracteres repetidos, en este caso el /

if [ ! -d $1 ]; then
    echo "Error: $1 no es un directorio"
    exit 1
fi

total=0
for f in `ls $1`; do
    route="$1/$f"
    if [ -f $route ]; then
        bytes=`ls -l $route | cut -d " " -f 5`
        echo "Fichero $route ocupa $bytes" | tr -s /
        (( total += $bytes ))
    fi
done

echo -e "\nTotal: $total"