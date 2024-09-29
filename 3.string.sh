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