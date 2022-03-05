#!/bin/bash

# bibliotecas = funções comuns compartilhadas por diferentes programas
# É possível vincular bibliotecas a programas
# Programas estáticos não depedem de arquivos externos, mas são maiores que programas dinâmicos

ldd /usr/bin/vi
    # conhecer as bibliotecas do programa vi

ld.so
    # programa que carrega a biblioteca e a liga ao programa que depende dela
vi /etc/ld.so.cache
    # mapeia onde encontrar as bibliotecas

cd /lib
cd /usr/lib
cd /lib64
cd /usr/lib64
# diretórios que estão localizados as bibliotecas

vi /etc/ld.so.conf
cd /etc/ld.so.conf.d/.

# arquivos e diretórios onde devemos conter as bibliotecas adicionais

ldconfig
    # salvar as alterações feitas em /etc/ld.so.conf peguem em /etc/ld.so.cache

export LD_LIBRARY_PATH=caminho_da_biblioteca
    # deixar um bliblioca ao alcance do ld.so

    