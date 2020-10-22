#!/bin/bash
#Raul_Hernandez_Lopez
#freeenergy1975@gmail.com
#12 de octubre del 2020

#Determina el sueldo semanal de N trabajadores considerando que se
#les descuenta 5% de su sueldo si ganan entre 0 y 150 pesos.
#Se les descuenta 7% si ganan más de 150 pero menos de 300
#y 9% si ganan más de 300 pero menos de 450.
#Los datos son horas trabajadas, sueldo por hora y nombre de cada trabajador

#Declaracion de variables.
Horas_Trabajadas=0
Pago_Horas=0
Sueldo_Semanal=0
Sueldo_Final=0
Dias_Trabajados=0
Numero_Trabajadores=0
#Declaracion del arreglo que contendra los nombres de los trabajadores.
Nombres=()
printf "Número de trabajadores :"
read Numero_Trabajadores

for(( x = 0; x < $Numero_Trabajadores; x++)) do
	#Recopila datos
	printf "\nNombre :"
	read Nombre
	Nombres[x]=$Nombre
	printf "\nPago por hora $"	
	read Pago_Horas
	printf "\nHoras trabajadas :"
	read Horas_Trabajadas
	printf "\nDias trabajados por semana :"
	read Dias_Trabajados
	Sueldo_Semanal = $((($Pago_Horas * $Horas_Trabajadas) * $Dias_Trabajados))

	if [ $Sueldo_Semanal -ge 0 ] && [ $Sueldo_Semanal -le 150 ]; then
	   Sueldo_Final=$(($Sueldo_Semanal)) 
	fi
done
