####################################################################

#Nome do Script: Planeta.sh
#Descrição: O script mostra o nome e sobrenome do usuário no dialog.
#Versão: 0.0 
#Licença: GNU
#Autor: Rafael Santos Ribeiro Candido
#E-mail: rs270930@gmail.com

###################################################################

#!/bin/bash

planeta=$(dialog --menu "Em qual planeta vocẽ mora?" 0 0 0  \
Terra "" \
Marte "" \
Plutão "" \
Nenhum "" \
3>&1 1>&2 2>&3)

if [ "$planeta" == "Terra" ]; then
 dialog --msgbox "Vocẽ é um terraqueo." 0 0
elif [ "$planeta" == "Marte" ]; then
 dialog --msgbox "Você é um marciano." 0 0
elif [ "$planeta" == "Plutão" ]; then
 dialog --msgbox "Você é um plutoniano." 0 0
elif [ "$planeta" == "Nenhum" ]; then
 dialog --msgbox "Você é um parasita humano." 0 0
else
 dialog --msgbox "Não conheço esse planeta." 0 0
fi
