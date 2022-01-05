#!/bin/bash
 main()
 {
   echo "Escolha uma opção:"
   echo "1 - Esvaziar a lixeira"
   echo "2 - Calcular fatorial"
   read opcao;
   case $opcao in
   "1")
    esvaziar_lixeira
    ;;
   "2")
    calcular_fatorial
    ;;
 esac
}
#função envaziar a lixeira
esvaziar_lixeira()
{
  echo "Esvaziando a lixeira..."
  path="${HOME}/.local/share/Trash/files"
  cd "$path"
  for file in *
  do
  rm -rf "$file"
  done
  echo "Done!"
}

#função para calcular umf atorial
calcular_fatorial()
{
  echo "Informe um número:"
  read numero;
  i=1
  fat=1
  while [ $i -le $numero ]
  do
  fat=$(($fat*$i))
  i=$(($i+1))
  done
  echo "fatorial de $numero é $fat"
}

#depois de fazer todas as funções simplesmente chama a função main
main

