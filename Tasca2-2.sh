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
	
else 
	echo "Pel·lícula no trobada"
fi	
rm aux aux1 aux2










