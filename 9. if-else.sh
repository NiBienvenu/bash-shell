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

# Condition Egal a 
# Si les deux arguments sont égaux, la commande echo affichera "Les arguments sont égaux."
# $1 correspond au premier argument fourni, $2 correspond au deuxième argument fourni.
# Utilisation : ./if-else.sh 5 5
# Sortie : Les arguments sont égaux.

if [ $1 -eq $2 ]; then
    echo "Les arguments sont égaux."
fi

# Condition différente de 
# Si les deux arguments sont différents, la commande echo affichera "Les arguments sont différents."
# $1 correspond au premier argument fourni, $2 correspond au deuxième argument fourni.
# Utilisation : ./if-else.sh 5 5
# Sortie : Les arguments sont inférieur.

if [ $1 -ne $2 ]; then
    echo "Les arguments sont différents."
fi

# Condition inférieure ou égale à
# Si le premier argument est inférieur ou égal au deuxième, la commande echo affichera "Le premier argument est inférieur ou égal au deuxième."
# $1 correspond au premier argument fourni, $2 correspond au deuxième argument fourni.
# Utilisation : ./if-else.sh 5 3
# Sortie : Le premier argument est inférieur ou égal au deuxème.

if [ $1 -le $2 ]; then
    echo "Le premier argument est inférieur ou égal au deuxième."
fi

# Condition supérieure ou égale à
# Si le premier argument est supérieur ou égal au deuxième, la commande echo affichera "Le premier argument est supérieur ou égal au deuxième."
# $1 correspond au premier argument fourni, $2 correspond au deuxième argument fourni.
# Utilisation : ./if-else.sh 5 3
# Sortie : Le premier argument est supérieur ou égal au deuxieme.

if [ $1 -ge $2 ]; then
    echo "Le premier argument est supérieur ou égal au deuxieme."
fi


# COnditions d'expression reguliere
# Utilisation : ./if-else.sh "test" "test"
# Sortie : Les arguments sont égaux.


if [[ $1 =~ $2 ]]; then
    echo "Les arguments sont égaux."
fi

