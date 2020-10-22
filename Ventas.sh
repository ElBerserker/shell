#!/bin/bash
#Raul hernandez lopez(Berserker)
#freeenergy1975@gmail.com
#Vierner 04 de septiembre del 2020

#este programa permite almacenar un numero N de ventas y separarla de acuerdo
#a una serie de condiciones: ventas mayores a 10,000 pero menores de 20,000
#Ventas iguales o menores de 10,000... cuanto es el monto de cada una y el monto 
#global.
MontoGlobal=0
sumaMayor=0
sumaMenor=0
posicion=0
mayor=0
menor=0
#declare -a ventas
ventas=()

printf "\nIngresa el numero de ventas :"
read numero


for((x = 0; x < $numero; x++)) do
	posicion=$(($posicion + 1))
	printf "ingresa el numero de venta No. $posicion :"
	read valordeventa
	ventas[$x]=$valordeventa
	MontoGlobal=$(($MontoGlobal+${ventas[$x]}))
	
	if [ ${ventas[$x]} -ge 0 ] && [ ${ventas[$x]} -le 10000 ]; then
		sumaMenor=$(($sumaMenor+${ventas[$x]}))
		menor=$(($menor+1))
	elif [ ${ventas[$x]} -gt 10000 ] && [ ${ventas[$x]} -le 20000 ]; then
		sumaMayor=$(($sumaMayor+${ventas[$x]}))
		mayor=$(($mayor+1))
	fi
done
printf "\nRealizaste $menor ventas menores a diez mil y estas suman :$ $sumaMenor pesos."
printf "\nRealizaste $mayor ventas mayores a diez mil pero menores a veinte mil, la suma de estas de de :$sumaMayor pesos."
printf "\nMientras que el monto global es de: $MontoGlobal pesos."
