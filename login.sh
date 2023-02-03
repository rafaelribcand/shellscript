ad -s sen#################################################################
#Nome Script: Login e Senha
#Descrição: Permite que o user coloque login e senha
#Versão: 0.0
#Licença: GNU
#Autor: Rafael Santos Ribeiro Candido
#E-mail: rs270930@gmail.com
################################################################
#!/bin/bash
usuario_correto="admin"
senha_correta="secreta"
echo "Digite seu nome de usuário"
read usuario
echo "Digite sua senha:"
read -s senha
if [ "$usuario" == "$usuario_correto" ] && [ "$senha" == "$senha_correta" ]; then
 echo "login realizado com sucesso!"
else
 echo "usuario ou senha inválidos. Tente novamente."
fi 
