#!/bin/bash

STR="BIENVENU DANS LE COURS DE BASH SCRIPTING"

# affichage la chaiane de caractere
echo ${STR}

# Replace la chaime de caractere avec une autre 

echo ${STR/BIENVENU/WELCOME}

# Affichage la chaire a une position donner:]

echo ${STR::8} # affiche BIENVENU

# Affichage a deux position donner

echo ${STR:8:22}

# Extraire le mot dans le chaine de caractère

echo ${STR//COURS/} 

# Les autres fonctions du String

echo ${STR,,} # tout en minuscule

echo ${STR,} # tout en majuscule sauf la première lettre

echo ${#STR} # nombre de caractères

echo ${STR^} # la première lettre en majuscule

echo ${STR^^} # tout en majuscule

echo ${STR: -8} # les 8 derniers caracteres

echo ${STR/S/s} # remplace la première occurrence de S par s

echo ${STR//S/s} # remplace toutes les occurrences de S par s

echo ${STR/S} # supprime la première occurrence de S

echo ${STR//S} # supprime toutes les occurrences de S





