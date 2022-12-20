#!/bin/bash

fitxer=$1

while [ $any2 -le $any1 ]
do
	echo "Introdueix el primer any"
	read any1
	echo "Introdueix el segon any"
	read any2
done

cut -d";" -f1 $fitxer > aux

while [ $any1 -le $any2 ] 
do
	grep $any1 aux >> aux1
	let any1=any1+1	
done 

lin=`wc -l < aux1`

if [ $lin -ne 0 ]; 
then 
	grep -f aux1 $fitxer > aux2
	sort -k1 -t";" aux2 > aux2
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
	echo "Pel·lícula no trobada"
fi	
rm aux aux1 aux2










