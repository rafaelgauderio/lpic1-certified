#!/bin/bash

# Processando fluxos de textos com filtros
# usa o pacote GNU Coreutils

cat 
    # mostra conteúdo de arquivos
tac 
    # mostra conteúdo de arquivos de trás pra frente
head
    # mostra dez primeiras linhas do arquivos por padrão
tail
    # mostra dez útlimas linhas do arquivos por padrão
tail -f arquivo_log
    # vai mostrando o conteúdo em tempo real a medida que é adicionado no arquivo
wc 
    # word counter, -l=linhas, -w=palavras, -c=caracteres
nl 
    # numera as linhas
expand
    # substitui espaços de tabulação por espaços simples
unexpand
    # sustitui 2 ou mais espaços simples, por expaços de tabulação
hexdump
    # mpstra arquivos binários
od 
    # converte em hexadecima, octadecima, binário
split
    # divide em arquivos menor
    # senão informar um tamanho se´ra utilizado um padrão de 1.000 linhas por parte
split -b 1024k original.txt parte_
    # parte_aa, parte_ab
cat parte_* > copia_original.txt
    # concatenando o arquivo que foi splitado
uniq
    # mostra conteúdo suprimindo linhas sequenciais repetidas
uniq -u nome_arquivo.txt
    # mostra apenas linhas que não se repetem
cut 
    # filtra arquivo em colunas. -d =delimitador -f=posição do campo
cut -d ':' -f 1,3 /etc/file.txt
    # mostra os campos da posição 1 e 3 separados por :
cut -d ':' -f 1,3 --output-delimiter ' = ' /etc/file.txt

paste
    # concatena arquivos lado a lado
join
    # concate arquivos lado a lado espeficicando campos
sort 
    # ordena alfabeticamente ou numericamente
    # -n=numerica, -r=ordem reversa
fmt 
    # formata um texto para um determinado número de caracteres por linha. Padrão 75
pr 
    # prepara arquivo de texto para impressão. 66 linhas por página
tr 
    # converte caracteres
echo TEXTO_MAISCULAS | tr '[A-Z]' '[a-z]'
    # -s=substitui, -d=deleta, 
tr -d '\r' <text_windows > texto_convertido_linux

less
    # paginador para textos grandes. Pode usar o more também
    # /=fazer buscas pra frente , ?=buscas retroativas
checksum
    # funciona como a impressão digital de um arquivo para ver se arquivo não foi alterado
md5sum
    # confere somas de verificação 128 bits
sha256sum
sha512sum

    


