#!/bin/bash

fitxer=$1

echo "Titol de la pel·lícula a cercar"
read titol

cut -f3 -d";" $fitxer|grep -i $titol|sort -k3 -t";"> aux
lin=`wc -l < aux`

grep aux $fitxer > aux2

if [ $lin -ne 0 ];
then
	cat aux2
else 
	echo "No hi ha cap coincidencia"
fi
