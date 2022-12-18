#!/bin/bash

fitxer=$1

sort -k3 -t";" $fitxer > aux.t
lin= wc -l < aux.t

for i in `seq 1 $lin 1`
do 
	echo "*********************************"
	echo -e "Títol:" `cut -d";" -f3 aux.t|head -$i|tail -1`
	echo -e "Any: `cut -d";" -f1 aux.t|head -$i| tail -1`	Longitud: `cut -d";" -f2 aux.t|head -$i|tail -1`	Popularitat: `cut -d";" -f8 aux.t| head -$i|tail -1`	Premis: `cut -d";" -f9 aux.t|head -$i| tail -1`	Tema: `cut -d";" -f4 aux.t|head -$i|tail -1`"
	echo -e "Actor: `cut -d";" -f5 aux.t|head -$i|tail -1` "
	echo -e "Actriu: `cut -d";" -f6 aux.t|head -$i|tail -1` "
	let i=i+1
done
echo "**********************************"

rm aux.t

#echo $(comando)
