###############################################################################
#Nome Script: Usuario
#Descrição: 0 script mostra todos os usarios do sistema
#Versão: 0.0
#Licença: GNU
#Autor: Rafael Santos Ribeiro Candido
#E-mail: rs270930@gmail.com
###############################################################################
#!/bin/bash
echo "usuários do sistema:"
cat /etc/passwd | cut -d: -f1
