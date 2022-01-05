#!/bin/bash
 echo “Testando o loop for”
 for i in {15..0};
 do
   echo “$i”
 done


 #for com sequencia
 #criar um sequencia começando no 1 e indo até o 200 com intervalo de 5
  echo “Testando o comando seq”
 for i in $(seq 1 5 200);
 do
  echo “$i”
done

#loop com while
 echo “Informe uma String qualquer ou  -1 para sair”
  read dado;
  while [ $dado != “-1” ];
  do
    echo “Você informou $dado”
    read dado;
done

#loop com while
echo “Informe até que valor positivo e maior que zero contar:”
read valor;
i=1
while [ $i -le $valor ]; #vai contando enquando for lower or equal o valor informado
 do
  echo “$i”
  ((i=$i+1))
done