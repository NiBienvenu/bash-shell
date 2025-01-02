#!/bin/bash

# Condition if else dans le bash language 

# Comparaison aves des valeurs fornie aux arguments
# Si le premier argument est supérieur au deuxième, la commande echo affichera "Le premier argument est plus grand que le deuxieme."
# Sinon, la commande echo affichera "Le premier argument est plus petit que le deuxieme."
# $1 correspond au premier argument fourni, $2 correspond au deuxième argument fourni.
# Utilisation :./if-else.sh 5 3
# Sortie : Le premier argument est plus grand que le deuxieme.

if [ $1 -gt $2 ]; then
    echo "Le premier argument est plus grand que le deuxieme."
else
    echo "Le premier argument est plus petit que le deuxieme."
fi