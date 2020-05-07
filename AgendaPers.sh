#!/bin/bash

# Agenda personal
# Autor: Miguel Asensio Maldonado
# Para la asignatura de SSOO 2020 - UCAM
# V1.0
menu(){
	echo "------------------------------------------------------"
	echo "Por favor seleccione una opción:"
	echo "1) Agregar contacto"
	echo "2) Eliminar contacto"
	echo "3) Mostrar los contactos en el programa"
	echo "4) Guardar los datos a un fichero"
	echo "5) Cargar datos desde un fichero"
	echo "6) Mas opciones"
	echo "7) Salir"
	echo "------------------------------------------------------"	
 	read opc
}
opc=0

agregar(){
	echo "Introduzca los valores indicados."
	echo "DNI: " && read dni
	echo "Nombre: " && read nombre
	echo "Apellidos: " && read apell
	echo "Correo electronico: " && read correo
	echo "DNI: ${dni}" >> Agenda.txt
	echo "Nombre: ${nombre}" >> Agenda.txt
	echo "Apellidos: ${apell}" >> Agenda.txt
	echo "Correo: ${correo}" >> Agenda.txt
	echo "---------------" >> Agenda.txt
}

eliminar(){
	echo "Introduzca el DNI de la persona que quiere eliminar: " && read elim
	cat Agenda.txt | grep ${elim}
	echo
}

while [ $opc -ne "7" ]
do
menu
	case $opc in
		1) echo "Valor = 1"
		agregar
	;;
		2) echo "Valor = 2"
		eliminar
	;;
		3) echo "Valor = 3"
	esac
done
#if [ menu -eq 7 ]
#then
#	echo "Ha seleccionado la opcion 7"
#else
#	echo "AWACATE"
#fi
