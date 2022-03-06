#!/bin/bash

# GERENCIAMENTO DE ARQUIVOS

ls
    # listar conteúdo de diretórios
    # -l = detalhes, -s = tamanho em bytes, -d = propriedades do diretório

# ENGLOBAMENTO
    # *=qualquer sequêcnia, ?=um caractere, []=lista de caracteres, {}=lista separados por vírgula
    # !=negação
ls /dev/tty[!3456789]
    # /dev/tty1     /dev/tty2
    # \ = curingas não realizam subsituição
    # "" = apenas '' e $ tem efeito
    # '' = nenhum caracter especial tem efeito

file arquivo.txt
    # informa o tipo de arquivo

# MANIPULANDO ARQUIVOS

touch 
    # criar arquivos e alterar a data de modificação =-m
touch -m arquivo_data.txt
cp 
    # copiar arquivos, -i=interativo, -p=copia atributos, -r=recursivamente
cp -ipr origem destino
cp -r /home/rafael /home/joao/
    # usando barra no final copia apenas o conteúdo do diretorio seja copiado
    # sem barra copia o diretorio
mv 
    # mover e renomear
cd
    # change directory
mkdir
    # cria diretórios
    # -p=criar árvore de diretórios recursivamente -p=parents
rmdir
    # remove diretórios vazios
rm -r /diretorio
    # remove diretpirio com conteudo

# AGREGAR ARQUIVOS
    # agregam mas não comprimem
tar
cpio
    # comandos para agrear arquivos
tar cvf conteudo_etc.tar /etc
    # c=criar, v=verbose, f=file, x=extrair -C=diretório destino, k=keep arquivo original
tar xvf conteudo_etc.tar
    # extraindo o conteudo

# COMPRIMIR
gzip file.tar
bzip2 file.tar
xz file.tar

# COMPRIMIR COM O TAR
tar czvf home.tar.gz /home/rafael   # gzip
tar cjvf home.tar.gz /home/rafael   # bzip2
tar cJvf home.tar.gz /home/rafael   # xz

# DESCOMPRIMIR
gunzip
bunzip2
unxz

# copia com dd
# dd realiza cópia byte a byte = cópia sequencial de dados
dd bs=1M count=1000 if=/dev/sdb1 of=disco.img

# LOCALIZAR ARQUIVOS
find    
    # opções -type d = directory, -type f = file, -type / =link simbolico
    # -name, iname(ignore case sensitive), -user, -size, -perm
    # -atime= access time, -ctime= create time, -mtime=modified time

find . size 0 -type f -exec rm '{}' \;
 # . = diretorio atual, tamanho a zero, -type= tipo file, rm = remover os arquivos encontrados
 # -exec =qual comando executar, {} = arquivo encontrado, \; = fim do comando
 


