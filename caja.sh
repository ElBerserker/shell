#Raul_Hernandez_Lopez
#freeeenergy1975@gmail.com

#!/bin/bash

printf 'INGRESA LA CANTIDAD DE BILLETES CON DISTINTO VALOR QUE TENGAS :'
read variedadb
#Declracion de variables
suma=0
suma2=0

for ((x = 1; x <= $variedadb; x++)); do
	printf "\nCual es el valor del billete :$ "
	read valor
	printf "\nCual es la cantidad de billetes de ese valor :"
	read cantidad
	suma=$(($suma+($valor*$cantidad)))	
done

echo 'INGRESA LA CANTIDAD DE MONEDAS CON DISTINTO VALOR QUE TENGAS :'
read variedadm

for ((y = 1; y <= $variedadm; y++)); do
	printf "\nCual es el valor de la moneda? :"
	read valor2
	printf "\ncuantas monedas tienes con ese valor? :"
	read cantidad2
	suma2=$(($suma2+($valor2*$cantidad2)))
done
#impresion de resultados
total=$(($suma+$suma2))
echo "el total de la caja es de :$total"
