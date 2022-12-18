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
	titol=$(cut -f3 -d";"|head -$i|tail -1)
	echo $titol

done
echo "**************************************"

cat aux2.t

rm aux.t aux2.t

