#!/bin/bash

fitxer=$1

sort -k3 -t";" $fitxer > aux.t
lin= wc -l < aux.t

for i in `seq 1 1 $lin`
do 
	echo *********************************
	titol= `cut -d";" -f3 aux.t|head -$i|tail -1`
	echo -e "Títol: $titol" 
	any= `cut -d";" -f1 aux.t|head -$i| tail -1`
	long= `cut -d";" -f2 aux.t|head -$i|tail -1`
	pop= `cut -d";" -f8 aux.t| head -$i|tail -1`
	premis= `cut -d";" -f9 aux.t|head -$i| tail -1`
	tema= `cut -d";" -f4 aux.t|head -$i|tail-1`
	echo -e "Any: $any	Longitud: $long	Popularitat: $pop	Premis: $premis	Tema: $tema"
	actor= `cut -d";" -f5 aux.t|head -$i|tail -1`
	echo -e "Actor: $actor"
	actriu= `cut -d";" -f6 aux.t|head -$i|tail -1`
	echo -e "Actriu: $actriu"
	echo **********************************
done

rm aux.t

#echo $(comando)
