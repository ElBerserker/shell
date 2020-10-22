#Raul_Hernandez_Lopez.
#freeenergy1975@gmail.com

#!/bin/bash

printf "Que es lo que quieres hacer? :\n1 calcular el tiempo en que tardaste en hacer un recorrido\n2 Calcular la distancia que recorriste\n3 Calcular la velocidad con la que realizaste tu recorrido \n"
read seleccion
#creacion de switch case.
case $seleccion in
	1)
		printf "\ncual es la ditancia en km que recorriste? :"
		read distancia
		printf "A que velocidad (km/hr) :"
		read velocidad
	
		tiempo=$(($distancia/$velocidad)) 
		
		printf "El tiempo que tardaste en Recorrer $distancia km es de $tiempo hrs\n" 
	;;
	
	2)	
		printf "\nA que velocidad realizaste tu recorrido? :"
		read velocidad2
		printf "\nEn cuanto tiempo(hrs)? :"
		read tiempo2
	
		distancia2=$(($velocidad2*$tiempo2))
	
		printf "\nLa distancia que recorriste es de :$distancia2 \n"
	;;
	3)
		printf "\nQue distancia recorriste (km) :"
		read distancia3
		printf "Cuanto tiempo tardaste(hrs) ? :"
		read tiempo3 
	
		velocidad3=$(($distancia3/$tiempo3))
		
		printf "\nLa velocidad con la que realizaste tu trecorrido es de :$velocidad3 km/hr\n"
	;;
esac
