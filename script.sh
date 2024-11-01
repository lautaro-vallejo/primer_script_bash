#!/bin/bash

function generar_informe {

    echo "Generando informe de uso del sistema..."
    {

         echo "Uso de CPU:"
        top -bn1 | grep "Cpu(s)"

        echo ""

        echo "Uso de Memoria:"
        free -h

        echo ""

        echo "Uso de Disco:"
        df -h

    } > informe_sistema.log

    echo "Informe guardado en informe_sistema.log"
}

function actualizar_sistema {
    echo "===== Iniciando actualizacion ====="

    echo "Actualizando lista de paquetes..."
    sudo apt update

    echo "instalando actualizaciones..."
    sudo apt upgrade -y

    echo "removiendo archivos innecesarios"
    sudo apt autoremove -y

    echo "===== actualizacion comleta ====="
}

function limpiar_temporales {
    echo "Eliminando archivos temporales..."
    rm -rf /tmp/*

    echo "Eliminando cache de apt......"
    sudo apt clean

    echo "Eliminando cache del usuario...."
    rm -rf ~/.cache/*

    echo "Archivos temporales eliminados"
}

opcion=0

 while [ $opcion -ne 4 ]; do

    echo -e "\n=== Menu de Automatizacion ==="

    echo "1. Generar informe de uso del sistema"

    echo "2. Actualizar el sistema"

    echo "3. Limpiar archivos temporales"

    echo "4. Salir"

    read -p "Seleccione una opcion: " opcion

    case $opcion in

        1) generar_informe ;;

        2) actualizar_sistema ;;

        3) limpiar_temporales ;;

        4) echo "Saliendo..."; exit 0 ;;

        *) echo "Opcion no valida. Intente de nuevo." ;;

    esac
done
