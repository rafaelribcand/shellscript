#!/bin/bash

#######################################################################

#Nome Script: monitor
#Descrição: O script monitora o arquivo saci.txt toda vez que ele é criado. Em seguida o arquivo e apagado.
#Versão: 0.0
#Licença: GNU
#Autor: Rafael Santos Ribeiro Candido
#E-mail: rs270930@gmail.com

#######################################################################

#Aparece uma barra de progresso do zenity monitorando.
zenity --progress --pulsate --width=600 --height=100 --text="Monitorando" &
pid=$!
#Looping do script.
while true
do
#Condicional
 if [ -f "saci.txt" ]; then
  echo "Alguém criou o arquivo saci.txt"
 sudo rm "saci.txt"
 echo "Arquivo saci.txt apagado"
 kill $pid
 zenity --width=600 --height=250 --info --text="Arquivo saci.txt apagado"
#Recomeço do looping.
 zenity --progress --pulsate --width=600 --height=100 --text="Monitorando" &
pid=$!
 fi
#Tempo de looping.
 sleep 1
done
