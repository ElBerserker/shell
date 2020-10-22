#!/bin/bash
#Raul_Hernandez_Lopez_(Berserker)
#freeenergy1975@gmail.com
#Miercoles 23 de septiembre del 2020

#Programa que permite almacenar un numero N de calificaciones 
#y nombres de alumnos para despues determinar el numero de aprobados y reprobados.

#Declaracion de variables
Calificaciones=0
Aprobados=0
Noaprobados=0
Numero_Alumnos=0
Posicion=0
Calificaciones=()
Nombres=() 

printf "\nIngresa el numero de alumnos a evaluar : "
read Numero_Alumnos

for((x = 0; x < $Numero_Alumnos; x++)) do 
	#Recopila el nombre y calificacion de los alumnos.
	Posicion=$(($Posicion + 1))
	printf "\nNombre del alumno [$Posicion ] : "
	read Nombre 
	Nombres[$x]=$Nombre 
	printf "\nCalificacion : "
	read calificacion
	Calificaciones[$x]=$calificacion	
	#Separacion de alumnos aprobados de los resprobados
	if [ ${Calificaciones[$x]} -ge 6 ] && [ ${Calificaciones[$x]} -le 10 ]; then
		printf "\nEl alumno ${Nombres[$x]} Aprobo con una calificación de [ ${Calificaciones[$x]} ]"
		Aprobados=$(($Aprobados + 1))
	elif [ ${Calificaciones[$x]} -lt 6 ] && [ ${Calificaciones[$x]} -gt 0 ]; then 
		printf "\nEl alumno ${Nombres[$x]} No aprobo"
		Noaprobados=$(($Noaprobados + 1))
	fi  
done

printf "\nEl número de aprobados es de [ $Aprobados ]"
printf "\nEl número de reprobados es de [ $Noaprobados ]" 
