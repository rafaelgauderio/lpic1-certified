#!/bin/bash

# SysVinit
# controla os daemons e recursos que devem ser ativos através de runleves
# pid do processo inicializador é sempre 1

./sbin/init
    # programa responsável por gerir os runlevels

vi /etc/inittab
    # arquivo de configuração do kernel

cd /etc/init.d/.
    # diretório onde ficam os scripts invocados pelo init
    # Runlevel 0 = desliga, Runlevel 6 = Reinicializada
    # id:x:initdefault = nunca pode ser 0 ou 6

# systemd
    # systemd é o gerenciador de sistemas e serviços modernizado
    # possue capacidade de paralelização. Utiliza ativação por sockets e D-Bus
    # conceito de unidades = units
    # target = agrupamento de units

systemctl start unit.service
systemctl stop unit.service
systemctl restart unit.service
systemctl status unit.service
system enable unit.service
    # unit será ativada durante o carregamento do sistema
systemctl disable unit.service
systemctl is-enable unit.service
    # 0 indica que está ativida e 1 indica que não está ativado
systemctl isolate multi-user.target
system set-defautl multi-user.target

cd /lib/systemd/system/.
    # arquivos de confituração de cada unidade
systemctl list-unit-files   
    # exibe a lista de todas as unidades disponíveis

vi /etc/systemd/login.conf
cd /etc/systemd/login.conf.d/.
    # diz com responder a certos eventos relacionados a gerenciamento de energia

acpid
    # principal daemon gerenciador de energia no linux


# Upstart
    # É o gerenciador de serviços que substitui o init
    # Usado pelo Ubuntu
cd /etc/init/.
    # onde ficam os scrips de inicialização do upstart

initctl list
    # lista os serviços do sistema
start tty6
    # iniciar o sexto terminal virtual
status tty6
stop tty6

    # comandos de desligar e reiniciar
shutdown hh:mm
shutdown +m
shutdown now # shutdown +0

vi /etc/shutdown.allow
    # usuário desse arquivo podem reiniciar o sistema
systemctl reboot
systemctl poweroff

wall
    # comando para enviar mensagem no terminal de todos os usuários logados 