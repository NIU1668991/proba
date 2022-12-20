#!/bin/bash

fitxer=$1

echo "Titol de la pel·lícula a cercar"
read titol

cut -f3 -d";" $fitxer|grep -i $titol|sort -k3 -t";"> aux
lin=`wc -l < aux`

grep -f aux $fitxer > aux2

if [ $lin -ne 0 ];
then
	i=1
	while [ $i -le $lin ]
	do
	echo "*************************************"
	titol=$(cut -d";" -f3 aux2|head -$i|tail -1)
	echo "Títol: $titol"
	any=$(cut -d";" -f1 aux2|head -$i|tail -1)
	long=$(cut -d";" -f2 aux2|head -$i|tail -1)
	pop=$(cut -d";" -f8 aux2|head -$i|tail -1)
	premis=$(cut -d";" -f9 aux2|head -$i|tail -1)
	tema=$(cut -d";" -f4 aux2|head -$i|tail -1)
	echo "Any: $any	Longitud: $long	Popularitat: $pop	Premis: $premis	Tema: $tema"
	actor=$(cut -d";" -f5 aux2|head -$i|tail -1)
	echo "Actor: $actor"
	actriu=$(cut -d";" -f6 aux2|head -$i|tail -1)
	echo "Actriu: $actriu"
	let i=i+1
	done
echo "************************************"
else 
	echo "No hi ha cap coincidencia"	
fi

rm aux aux2 

#-f ARCHIVO extrae los patrones del archivo que especifiquemos. Los patrones del archivo deben ir uno por línea
