###############################################
#Nome do Script: Sobrenome
#Descrição: O script mostra o nome e sobrenome do usuário no dialog.
#Versão: 0.0 
#Licença: GNU
#Autor: Rafael Santos Ribeiro Candido
#E-mail: rs270930@gmail.com

##############################################


#!/bin/bash

nome=$(dialog --inputbox "Qual é o seu nome?" 10 60 3>&1 1>&2 2>&3)
sobrenome=$(dialog --inputbox "Qual é o seu sobrenome?" 10 60 3>&1 1>&2 2>&3)

dialog --msgbox "Muito prazer em conhecê-ló, $nome $sobrenome!" 10 60
