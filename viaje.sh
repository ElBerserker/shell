#!/bin/bash

kilometros=17

	printf "La compañía de autobuses “La curva loca”\nEl costo por kilomtro es de 17 pesos\n"
	printf "\nA que distancia en kilometros se encuentra tu destino? :"
	read distancia

costo=$(($kilometros*$distancia))

	printf "\nel costo de tu boleto es de :$costo"
