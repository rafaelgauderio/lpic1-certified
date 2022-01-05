#!/bin/bash
echo "Digite um número inteiro:"
read numero;

if [ "$numero -gt 30" ]; #greater than
then 
    echo "O número informado é maior que 30"

# =,    !=,         eq,     ne,         gt,             ge,                 lt,         le,             d,          f
# igual diferente   equal   not equal   greater than    greater or equal    lower than  lower or

#echo comando else

 echo “Digite um número inteiro:”
  read numero;
  if [ “$numero” -ge 0 ];
   then
    echo “O número $numero é positivo!”
  else
   echo “O número $numero é negativo!”
fi

#comando elif equivalente ao else if de outras linguagens
echo "Selecione uma opção abaixo:"
echo "1 - Exibir data e hora do sistema"
echo "2 - Exibir o resultado da divisão 10/5"
echo "3 - Exibir uma mensagem"
 read opcao;
if [ $opcao == "1" ];
then
  data=$(date +"%T, %d/%m/%y, %A")
  echo "$data"
elif [ $opcao == "2" ];
then
   result=$((10/5))
   echo "divisao de 10/5 = $result"
elif [ $opcao == "3" ];
 then
 echo "Informe o seu nome:"
 read nome;
 echo "O nome informado foi, $nome!"
fi

#comando case

echo "Selecione uma opção abaixo:"
echo "1 - Exibir data e hora do sistema"
echo "2 - Exibir o resultado da divisão 10/5"
echo "3 - Exibir uma mensagem"
 read opcao;
case $opcao in
  "1")
  data=$(date +"%T, %d/%m/%y, %A")
  echo "$data"
  ;;
 "2")
   result=$((10/5))
   echo "divisao de 10/5 = $result"
   ;;
 "3")
 then
 echo "Informe o seu nome:"
 read nome;
  echo "O nome informado foi, $nome!"
  ;;
  *)
  echo "Opção inválida"
  ;;
esac


