#!/bin/bash
echo "Seu nome de usuário é:"
whoami

echo "Atual e tempo que o computador está ligado:"
uptime

echo "print working directory:"
pwd


# Inserindo comentários
echo "Comando echo imprime os textos na tela para o usuario"

# declarando variáveis
site=www.delucahigiene.com.br
numero_favorito=17
_cidade="Porto Alegre"

echo "Site de vendas de produtos químicos : $site"
echo "Meu número favorito é: $numero_favorito"
echo "Resido atualmente em $_cidade"

# Printando o nome de uma variável ao invés de seu conteúdo
nome=rafael
echo "O nome da variável é \$nome"

# atribuindo saídas de comandos de variáveis 
# duas sintaxes: nome_da_variavel=$(comando) nome_da_variavel=`comando`
system_information=`df -h`
system_info=$(df -h)
echo system_information
echo system_info 

# capturando entrada de dados do usuário
echo "Qual o nome do seu filme favorido?"
read nome_filme;
acho "O seu filme favorito é $nome_filme"

