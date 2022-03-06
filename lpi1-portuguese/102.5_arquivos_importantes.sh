#!/bin/bash

# Sistemas de pacotes RPM e YUM
# RPM = Red Hat Package Manager - Fedora, CentOS, openSUSE

rpm --install gcc-4.8.0-0.8.fc19.x86_64.rpm
    # rpm -i nome_pacote
rpm --update gcc-4.8.0-0.8.fc19.x86_64.rpm
    # rpm -U nome_pacote
rpm --freshen gcc-4.8.0-0.8.fc19.x86_64.rpm
    # rpm -F nome_pacote 
    # atualiza apenas se já estiver instalado
rpm --erase gcc-4.8.0-0.8.fc19.x86_64.rpm
    # rpm -e nome_pacote
rpm --query gcc-4.8.0-0.8.fc19.x86_64.rpm
    # rpm -q nome_pacote
    # inspeciona um pacote

# SUBOPÇÕES DE QUERY

rmp -qa 
rmp --query --all 

rpm -qc nome_pacote.rpm
rpm ---query --configfiles nome_pacote.rpm

rpm -qd nome_pacote.rpm
rpm ---query --docfiles nome_pacote.rpm

rpm -qf caminho_do_arquivo.rpm
rpm --query --file caminho_do_arquivo.rpm
    # consulta qual pacote instalou o arquivo indicado

rpm -qi nome_pacote.rpm
rpm ---query --info nome_pacote.rpm

rpm -ql nome_pacote.rpm
rpm ---query --list nome_pacote.rpm

rpm -qp nome_pacote.rpm
rpm ---query --package nome_pacote.rpm
    # faz a inspeção em um arquivo de um pacote não instalado

rpm -qR nome_pacote.rpm
rpm ---query --requires nome_pacote.rpm
    # mostra as dependências necessárias

rpm ---query --whatrequires nome_pacote.rpm
    # mostra as os programas que requerem (depem) do pacote

rpm --install --nodeps --force nome_pacote.rpm
    # isntalar pacote evitando conflitos de dependências

# CONVERSÃO E EXTRAÇÃO
# cpio semelhante ao tar
rmp2cpio Virtualbox.x86_64.rpm | cpio -t
# opções cpio -i=extração, -d=cria árvore de diretórios, -v=verbose
rmp2cpio Virtualbox.x86_64.rpm | cpio -idv '*pdf'

# ASSINATURA DE PACOTES
# serve para garantir a autenticidad

rmp --import /usr/share/rhn/RPM-GPG-KEY-Fedora
    # chaves são incorporadas ao database
rmp--checksig nome_do_pacote
    # opções -Va = verifical all pacotes instalados
    # Se nenhm arquivo do pacote foi modificado em relação ao original, NENHUMA SAÍDA será exibida

# GERENCIADOR YUM - instala a partir da internet com as dependências

vi /etc/yum.conf
    # arquivo que define o comportamento do yum
cd /var/cache/yum
    # diretório de armazenamento dos pacotes
cd /etc/yum.respo.d     
    # diretório que definem os repositórios

yum search pacote
yum install pacote
yum groupinstall grupo 
yum group list
yum remove pacote 
yum esare pacote
yum provice recurso 
yum whatprovices recurso 
yum update
yum upgrade
    # update e upgrade sem argumentos ou com o nome de um pacote espefífico
yum upgrade --obsoletes

yumdownloader
    # apenas baixar o pacote sem instalo
yumdownloader --source pacote
    # copias apenas o código fonte no lugar do pacote compilado

# FEDORA
yum install dnf
install nome_do_pacote

# OPEN SUSE
zypper repos 
zypper refresh
zypper ar http://download.opensuse.org/update/11.1/ update
zypper in nano
 zypper rm apache2
 zypper update apache2








