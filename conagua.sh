#!/bin/bash
#Raul_Hernandez_Lopez_(Berserker)
#freeenergy1975@gmail.com
#Miercoles 23 de septiembre del 2020

#Determinar el pago que debe realizar una persona por el 
#Total de metros cúbicos que consume de agua

#Recopila los datos
printf "\nIngresa el precio del agua por metro cubico $"
read Precio_Agua
printf "\nIngresa la cantidad en metros cubicos de agua consumida:"
read Agua_Consumida
#Define el monto a pagar
pago=$(($Precio_Agua*$Agua_Consumida))
#Impresion de resultados
printf "\nEl monto a pagar es de[$ $pago ]"
