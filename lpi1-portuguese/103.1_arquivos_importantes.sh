#!/bin/bash

# LINHA DE COMANDO - ambiente de programação em tempo real
# bash = Bourne Again Shell
# usuário root  $ usuário comum

echo $PATH 
    # exibe o conteúdo da variável PATH
pwd 
    # exibe o print work directory

set
    # define ou altera opções do shell ou parâmtros de posição
    # determinar os valores do ambiente do sistema
set --a b c 
    # valores a b e c para as variaveis $1, $2, $3

unset 
    # remove os valores e atributos de uma variável

env
    # sem argumentos exiebe as variáveis de ambiente e seus conteúdos
env LANG=C date 

export 
    # define uma variável de ambiente para uma sessão atual e subsessões
export PATH=$PATH:/usr/local/bin
    # inclui o caminho acima a variável PATH

declare 
    # define os valores e atributos de uma variável
declare -x PATH
    # export PATH

exec 
    # usado com scripts. Subistitui o shell com o comando fornecido
type
    # identifica se é um binário convencional ou um arquivo interno
type man
    # /usr/bin/man
type echo
    # echo é um comando interno
which
    # exibe o caminho do arquivo binário

# VARIÁVEIS
lpi="linux Institute"
echo $lpi
    # Linux Institute
echo $DISPLAY
    # qual display do programa X
echo $HISTFILE
    # /HOME/.bash_history
    # caminho para o histórico de comandos
echo $LANG
echo $HOME
echo $PATH
echo $TERM

# VARIÁVEIS RESERVADAS = parâmetros = divididos em especiais e de posição
# PARÂMETROS ESPECIAIS
$*
$@
    # contém todos os parâmetros de posição
$0  # nome do shell ou script atual    
$!  # id do último processo em background
$$  # id do processo atual
$?  # status da saída do último comando

# PARÂMETROS DE POSIÇÃO = variáveis que iniciam com digitos
# utilizados para é recolher algumentos em arquivos de script
$1
$2
$9
${10}
${11}


# ATALHOS DO SHELL
# seta para cima - navega no histórico
# tab - completa os comandos
crtl+r  # procura histórico a partir do texto digitado em seguida
crtl+g  # sai do modo procura
!!      # repete o último comando
!$      # recupera o último argumento do comando anterior
!*      # recupe todos os arumentos do comando anterior
ping 192.168.0.1    
ssh !$  # ssh 192.168.0.1
alt + . # !$ na última posição do cursor

crtl+a  # início da linha
crtl+e  # fim da linha
alt+b   # avança em uma palavra
alt+f   # volta uma palavra
alt+backspace   # apagar da posição do cursor até o início da palavra antes do cursor
alt+d           # apagar da posição do cursor até o fim da palavra após o cursos

# Usando EMULADOR DE TERMINAL
crtl+shitf+c    # copiar textos exibidos na linha de comando
crtl+shitf+v    # colar textos exibidos na linha de comando
crtl+w          # copia e apagar da posição do cursos até o íncio da palavra antes do cursos
crtl+k          # copia e apaga da posição do cursor até o fim da linha
crtl+x          # copia e apaga da posição do cursor até o início da linha 
crtl+y          # cola o último texto copiado
crtl+d          # encerra a sessão do shell

uname --help
    # info sobre como utilizar o comando, nem todos os comandos tem help
info uname
    # alternativa ao man menos detalhada
cd /usr/share/info
      # diretório com os documentos info
whatis man
    # banco de dados com descrição sucinta dos comandos
man printf

cd /usr/man
cd /usr/share/man
    # diretórios com os arquivos de manuais
echo $MANPATH
    # variável de ambiente com os caminhos onde ficam os manuais
apropos
    # utilizado quando não se tem certeza sobre o nome do comando
    #  procura por uma determinada expressão nas páginas de documentação do Linux

apropos debugger
cd /usr/share/doc 
    # documentos html e pdf sobre projetos GNU







    
