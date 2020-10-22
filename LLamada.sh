#Raul_Hernandez_Lopez
#freeenergy1975@gmail.com

#!/bin/bash

Costo_LLamada=0
Duracion_LLamada=0
Monto=0

print "\nIngresa la tarifa por minuto de la llamada :"
read Costo_LLamada
print "\nDuraion_LLamada"
read Duracion_LLamada

Monto=$(($Costo_LLamada*$Duracion_LLamada))

#Impresion de resutados
printf "El monto a pagar por tu llamada es de [$ $Monto ]"
