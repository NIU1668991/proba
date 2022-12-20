#!/bin/bash

fitxer=$1

sort $fitxer > aux.t
lin=`wc -l < aux.t`
let lin=lin-3
echo $lin

head -$lin aux.t > aux2.t

i=1
while [ $i -le $lin ]
do
	echo "**************************************"
	titol=$(cut -f3 -d";" aux2.t|head -$i|tail -1)
	echo "Titol: $titol"
	any=$(cut -f1 -d";" aux2.t|head -$i|tail -1)
	long=$(cut -f2 -d";" aux2.t|head -$i|tail -1)
	pop=$(cut -f8 -d";" aux2.t|head -$i|tail -1)
	premis=$(cut -f9 -d";" aux2.t|head -$i|tail -1)
	tema=$(cut -f4 -d";" aux2.t|head -$i|tail -1)
	echo "Any: $any	Longitud: $long	Popularitat: $pop	Premis: $premis	Tema: $tema"
	actor=$(cut -f5 -d";" aux2.t|head -$i|tail -1)
	echo "Actor: $actor"
	actriu=$(cut -f6 -d";" aux2.t|head -$i|tail -1)
	echo "Actriu: $actriu"
	let i=i+1
done
echo "**************************************"

rm aux.t aux2.t


