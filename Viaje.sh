#!/bin/bash
#Raul_Hernandez_Lopez
#freeenergy1975@gmail.com

#Cual el precio de un boleto de viaje en funcion de los kilometros recorridos, se sabe
#que el costo por kilometros es de 20.5

#Declaración de variables

Kilometros=20
#Obtención de valores 
printf "\nIngresa la distancia en kilometros que recorriste :"
read Distancia
#Calcula el costo del boleto
Costo=$(($Distancia*$Kilometros))
#impresion de resultados
printf "\nEl costo de tu boleto [$ $Costo ]\n"
