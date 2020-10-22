#!/bin/bash
echo 'MONEDERO'

monedero=(1 5 10 20 50) 
suma1=0
suma2=0

for((x = 0; x <= 2; x++)) do
	printf "\ncuantas modenas de: ${monedero[$x]} tienes ? : "
	read cantidad
	suma1=$(($suma1+($cantidad*${monedero[$x]})))
done

for((y = 3; y <= 4; y++)) do
	printf "\ncuantos billetes de ${monedero[$y]} tienes? :"
	read cantidad2
	suma2=$(($suma2+($cantidad2*${monedero[$y]})))
done
	
total=$(($suma1+$suma2))
printf "\nEl total de su monedero es de $ $total pesos.\n"
