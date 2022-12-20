#!/bin/bash

fitxer=$1

echo "Nom de la persona a cercar"
read nom

grep -i "$nom" $fitxer > aux
lin=`wc -l < aux`
i=1
while [ $i -le $lin ]
	do
	echo "*************************************"
	titol=$(cut -d";" -f3 aux|head -$i|tail -1)
	echo "Títol: $titol"
	any=$(cut -d";" -f1 aux|head -$i|tail -1)
	long=$(cut -d";" -f2 aux|head -$i|tail -1)
	pop=$(cut -d";" -f8 aux|head -$i|tail -1)
	premis=$(cut -d";" -f9 aux|head -$i|tail -1)
	tema=$(cut -d";" -f4 aux|head -$i|tail -1)
	echo "Any: $any	Longitud: $long	Popularitat: $pop	Premis: $premis	Tema: $tema"
	director=$(cut -d";" -f7 aux|head -$i|tail -1)
	echo "Director: $director"
	actor=$(cut -d";" -f5 aux|head -$i|tail -1)
	echo "Actor: $actor"
	actriu=$(cut -d";" -f6 aux|head -$i|tail -1)
	echo "Actriu: $actriu"
	let i=i+1
	done
echo "************************************"

rm aux
