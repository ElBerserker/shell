#!/bin/bash

echo 'ingresa la calificacion que obtuviste: '
read calificacion

case $calificacion in 
	10)
		echo 'Tu calificacion es A'
	;;

	9)
		echo 'Tu calificacion es B'
	;;
	
	8)
		echo 'Tu calificaion es C'
	;;
	
	7)
		echo 'Tu calificacion es D'
	;;
	6)
		echo 'Tu calificacion es D'
	;;
	5)
		echo 'Tu calificaion es E'
	;;
	4)
		echo 'Tu calificacion es E'
	;;
	3)
		echo 'Tu calificacion es E'
	;;	
	2)
		echo 'Tu calificacion es E'
	;;
	1)
		echo 'Tu calificacion es E'
	;;
	0)	
		echo 'tu calificacion es F'
	;;

	*)
		echo 'Ingresa un dato valido'
	;;
esac
