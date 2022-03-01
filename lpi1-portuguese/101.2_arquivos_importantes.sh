#!/bin/bash

# arquivos começam com vi e diretórios com cd
# primeiros 440 bytes MBR (Master Boot Record) devem ter o estágio inicial do carregdor de boot
# UEFI (Unified Extensible Firmware Interface) = capaz de ler a tabela de partições e algums sistemas de arquivos
# UEFI - FAT12, FAT16 e FAT32
# ESP (Partição que contém os aplicativos EFI) = EFI system Partition
# BootLoares = carregador de Boot = Grub
# Grub = apresenta um lista de SO disponíveis para inicialização

vi /etc/default/grub    
    # Devem incluir alterações nesse arquivo para que sejam permanentes
    # parâmetros, acpi, init, system.init, quiet, mem, root, ro, rw
    # após alterar esse arquivos os seguintes comandos deve ser feitos
grub-mkconfig -o /boot/grub/grub.cfg

vi /boot/grub/grub.cfg
    # arquivo com os parâmetros do kernel
vi /proc/cmdline
    # consultar parâmetros passados para o kernel

# serviços no linux são conhecidos como DAEMONS
# SO - seria apenas o kernel que controla o hardware e gerencia os processos


vi /initramfs 
    # inicial ram filesystem
    # arquivo compacto que contém um sistema de arquivos-raiz durante a inicialização do SO
    # fornece os módos necessário para o kernel acessos de sistema de arquivos raiz do SO

vi /etc/fstab
    # listas as partições que devem ser montadas

vi /init    
vi /systemd
vi /Upstar
    # init é o inicializador do sistema
    # programas que executam os scripts de inicialização e os daemons do sistema.

dmesg
journalctl --boot  # journalctl -b
journalctl --dmesg # journalctl -d
    # programa que executa o Kernel Ring Buffer # espaço de memórias com as mesangens emitidas durante a inicialização

cd /var/log 
    # mensagem de iniciliazação e infos sobre o SO


