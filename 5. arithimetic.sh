#!/bin/bash

# Arithimetique avec bash shell script

cal=$((7+5))
echo $cal

# Concaténation
concat="Hello"
concat+=" World"
echo $concat
 
# Arithimetique pour les operations mathematiques
echo $((10*2))
echo $((10-2))
echo $((10/2))
echo $((10%2))

# Conversion de type
echo $((10+5))
echo "10 + 5" | bc

# Arithimetique  avec Expresion
expr 5 + 9

CAL3=`expr 5 + 9`
echo $CAL3

# Arithimetique avec bc
echo "scale=2; 5 + 9" | bc
