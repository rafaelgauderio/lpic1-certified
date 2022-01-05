#argumentos
# $0 = contém o nome do script que fo execuado
# $1 ... $n = contém os argumentos na ordem que foram passados
# $# = contém o número de argumentos passados, sem considerar o nome do script
# $* = retorna todos os argumentos de uma vez

# se o nome do arquivo for script.sh
# ./shell_script_argumento.sh rafael juliana -15
# Número de argumentos passados: 3
# argumento 1 passado: rafael 
# argumento 2 passado: juliana
# argumento 3 passado: -15

#!/bin/bash
 if [ $# -lt 1 ];
  then
   echo "Precisa fornecer pelo menos 1 argumento!"
   exit 1
 fi
 echo "Número de argumentos passados: $#"
i=0
for argumento in $*
 do
 i=$(($i+1))
  echo "Argumento $i passado: $argumento"
 done