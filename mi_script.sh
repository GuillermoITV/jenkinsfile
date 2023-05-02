#!/bin/bash

# Comprobamos que se haya pasado un argumento (la ruta a liberar espacio)
if [ $# -eq 0 ]; then
    echo "Debe proporcionar una ruta a la que liberar espacio."
    exit 1
fi

# Obtenemos el uso actual del disco en la ruta especificada
echo "Espacio usado antes de la limpieza:"
df -h $1

# Eliminamos archivos temporales y cachés
echo "Eliminando archivos temporales y cachés..."
find $1 -type f \( -name "*.tmp" -o -name "*.log" -o -name "*.cache" \) -delete
cd $1 
rm -rf *

# Vaciamos la papelera de reciclaje
echo "Vaciando la papelera de reciclaje..."
rm -rf $HOME/.local/share/Trash/*

# Obtenemos el uso actual del disco en la ruta especificada después de la limpieza
echo "Espacio usado después de la limpieza:"
df -h $1
