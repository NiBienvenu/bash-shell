#!/bin/bash

# =================================================================

# Condition sur les fichiers
# Utilisation : ./if-else.sh /etc/hosts /etc/hosts
# Sortie : Les arguments sont égaux.

if [ -f $1 ] && [ -f $2 ]; then
    echo "Les arguments sont égaux."
    if cmp -s $1 $2; then
        echo "Les contenus des deux fichiers sont identiques."
    else
    echo "Les contenus des deux fichiers sont différents."
    fi
fi

# Conditions sur les permissions du fichiers
# Utilisation : ./if-else.sh /etc/hosts /etc/hosts
# Sortie : Les permissions des deux fichiers sont égales.

if [ -f $1 ] && [ -f $2 ]; then
    echo "Les arguments sont égaux."
    if stat -c "%A" $1 | grep -q -E '^(r|w|x)(r|w|x)(r|w|x)$'; then
        echo "Les permissions des deux fichiers sont égales."
    else
    echo "Les permissions des deux fichiers sont différents."
    fi 
fi

# Conditions sur la taille des fichiers
# Utilisation : ./if-else.sh /etc/hosts /etc/hosts
# Sortie : Les tailles des deux fichiers sont égales.

if [ -f $1 ] && [ -f $2 ]; then
    echo "Les arguments sont égaux."
    if [ $(stat -c %s $1) -eq $(stat -c %s $2) ]; then
        echo "Les tailles des deux fichiers sont égales."
    else
    echo "Les tailles des deux fichiers sont différentes."
    fi
fi

# Conditions sur le type de fichier
# Utilisation : ./if-else.sh /etc/hosts /etc/hosts
# Sortie : Les types de deux fichiers sont égaux.

if [ -f $1 ] && [ -f $2 ]; then
    echo "Les arguments sont égaux."
    if file -b $1 | grep -q -E '^(ASCII text|Bourne-Again shell script|C source code|Common Object File Format|data)$'; then
    echo "Les types de deux fichiers sont égaux."
    else
    echo "Les types de deux fichiers sont différents."
    fi
fi

# Conditions sur la modification du dernier accès et du dernier changement
# Utilisation : ./if-else.sh /etc/hosts /etc/hosts
# Sortie : Les dates de modification des deux fichiers sont égales.

if [ -f $1 ] && [ -f $2 ]; then
    echo "Les arguments sont égaux."
    if [ $(stat -c %Y $1) -eq $(stat -c %Y $2) ]; then  
        echo "Les dates de modification des deux fichiers sont égales."
    else
    echo "Les dates de modification des deux fichiers sont différentes."                                                                                                                                                    
    fi                              
fi
# Conditions sur le propriétaire et le groupe du fichier
# Utilisation : ./if-else.sh /etc/hosts /etc/hosts
# Sortie : Les propriétaire et le groupe des deux fichiers sont égaux.

if [ -f $1 ] && [ -f $2 ]; then
    echo "Les arguments sont égaux."
    if [ $(stat -c %U $1) = $(stat -c %U $2) ] && [ $(stat -c %G $1) = $(stat -c %G $2) ]; then
    echo "Les propriétaire et le groupe des deux fichiers sont égaux."
    else
    echo "Les propriétaire et le groupe des deux fichiers sont différents."
    fi
fi

# Conditions sur la date de création du fichier
# Utilisation : ./if-else.sh /etc/hosts /etc/hosts
# Sortie : Les dates de création des deux fichiers sont égales.

if [ -f $1 ] && [ -f $2 ]; then
    echo "Les arguments sont égaux."
    if [ $(stat -c %z $1) = $(stat -c %z $2) ]; then
    echo "Les dates de création des deux fichiers sont égales."
    else
    echo "Les dates de création des deux fichiers sont différentes."
    fi
fi

# Conditions sur le mode de liaison des fichiers
# Utilisation : ./if-else.sh /etc/hosts /etc/hosts
# Sortie : Les modes de liaison des deux fichiers sont égaux.

if [ -f $1 ] && [ -f $2 ]; then
    echo "Les arguments sont égaux."
    if [ $(stat -c %a $1) = $(stat -c %a $2) ]; then
    echo "Les modes de liaison des deux fichiers sont égaux."
    else
    echo "Les modes de liaison des deux fichiers sont différents."
    fi
fi

# Conditions sur l'état des liens symboliques
# Utilisation : ./if-else.sh /etc/hosts /etc/hosts
# Sortie : Les liens symboliques des deux fichiers sont égaux.

if [ -f $1 ] && [ -f $2 ]; then
    echo "Les arguments sont égaux."
    if [ $(readlink -f $1) = $(readlink -f $2) ]; then
    echo "Les liens symboliques des deux fichiers sont égaux."
    else
    echo "Les liens symboliques des deux fichiers sont différents."
    fi
fi