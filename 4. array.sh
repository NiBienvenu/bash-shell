#!/bin/bash

# tableau dans bash shell

array=(lundi mardi mercredi jeudi vendredi samedi Dimanche)

# affichage de tous les elements de la tableau
echo "Array : ${array[@]}"

# affichage de la taille du tableau
echo "Taille du tableau : ${#array[@]}"

# affichage des indexes du tableau
echo "Indexes du tableau : ${!array[@]}"

# modification du premier element du tableau
array[0]="Jour de la semaine"

# affichage du premier element du tableau modifie
echo "Premier element du tableau modifie : ${array[0]}"

# ajout d'un element au tableau
array[6]="Sexte"


# affichage du tableau avec le nouveau element
echo "Tableau avec le nouveau element : ${array[@]}"

# suppression d'un element du tableau
unset array[5]

# affichage du tableau avec l'element supprime
echo "Tableau avec l'element supprime : ${array[@]}"
