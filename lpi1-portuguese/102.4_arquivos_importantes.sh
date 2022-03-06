#!/bin/bash

# Sistemas de pacotes Debian .deb
# adotado por Ubuntu, Linux Mint
# sistema de gerenciamento de pacotes - possibilidade de RESOLVER DEPENDÊNCIAS

dpkg
    # instala programas individuais
apt-get
    # busca em um repositório de pacotes remotos antes de instalar

vi /etc/apt/sources.list
    # arquivo com a origem dos pacotes
cd /etc/apt/sources.list.d/.
    # diretório com arquivos adicionais

apt-get update
apt update
    # atualizar as versões dos programas nos repositórios

apt-cache search nome_do_programa
apt search nome_do_programa
    # consultar um programa antes de instalar

# INSTALAÇÃO
apt-get install nome_do_programa
    # instala resolvendo dependências
dpkg -i virtualbox-4.3_amd64.deb
    # instala pacotes separadamente sem recorrer a repositorios
apt-get install -f nome_pacote
    # instala as dependências necessárias faltando
dpkg-reconfigure tzdata
    # reconfigurar um pacote

# REMOÇÃO
apt-get remove vim
dpkg -r nome_do_programa
apt-get remove --purge vim
    # remove os arquivos de configurações também

# ATUALIZAÇÃO
apt-get upgrade vim
    # atualiza apenas o vim
apt-get upgrade
apt safe-upgrade
    # atualiza todo os pacotes
apt-get dist-upgrade
    # atualizar apenas os pacotes obsoletos

# INSPEÇÃO
dpkg -l nome_do_pacote.deb
    # mostra o estado
dpkg -S nome_do_pacote.deb
    # qual pacote instalou o arquivo especificado
dpkg -L nome_do_pacote.deb
    # Lista arquivos instalados do pacote
dpkg --contents nome_do_pacote.deb
    # lsita conteúdo
apt-cache show vim
apt show vim
    # mostra detalhes do pacote mesmo que não esteja instalado





