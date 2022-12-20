#!/bin/bash





while [ $i -le $lin ]
	do
	echo "*************************************"
	titol=$(cut -d";" -f3 aux3|head -$i|tail -1)
	echo "Títol: $titol"
	any=$(cut -d";" -f1 aux3|head -$i|tail -1)
	long=$(cut -d";" -f2 aux3|head -$i|tail -1)
	pop=$(cut -d";" -f8 aux3|head -$i|tail -1)
	premis=$(cut -d";" -f9 aux3|head -$i|tail -1)
	tema=$(cut -d";" -f4 aux3|head -$i|tail -1)
	echo "Any: $any	Longitud: $long	Popularitat: $pop	Premis: $premis	Tema: $tema"
	actor=$(cut -d";" -f5 aux3|head -$i|tail -1)
	echo "Actor: $actor"
	actriu=$(cut -d";" -f6 aux3|head -$i|tail -1)
	echo "Actriu: $actriu"
	let i=i+1
	done
echo "************************************"
