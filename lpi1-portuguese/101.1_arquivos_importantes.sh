#!/bin/bash

# arquivos começam com vi e diretórios com cd

vi /etc/modprobe.conf
    # opções permanentes para cada módulo

cd /etc/modprobe.d/
    # arquivos individuais para cada módulo com extensão .conf

vi /etc/modprobe/bracklist
    # listar aqui os módulos que devem ser bloqueados o carregamento

cd /proc
    # informações dos processos ativos e recursos de hardware

vi /proc/cpuinfo
vi /proc/dma
vi /proc/ioports
    # endereços de memórias usados pelos dispositivos
vi /proc/interrupts
    # requisições de interrupção (IRQ) nos processadores

cd /sys
    # armazena informações de dispositivos
    # sistema de arquivos lógico chamado SysFS

cd /dev
    # arquivos especiais que representasam os dispositivos do sistema
    # Todo dispositivo de bloco é identificado por um arquivo aqui dentro
    # Dispositivos de armazenamento no linux são conhecidos como DISPOSITIVOS DE BLOCO

vi /dev/hda 
    # representa disco IDE ou sata conectada ao primeiro canal da placa mãe 
vi /dev/hda1
    # primeira partição
vi /dev/hdc
    # dispositivo de DVD
vi /dev/fd0
    # dispositivo de disquete
vi /dev/mmcblk0p1
    # dispositivos de cartões SD
vi /dev/mmcblk1p1
    # dispositivos SSD
vi /dev/nvmw0n1p1
    # dispositivos nvme

cd /etc/udev/rules.d/.
    # detecção de dispositivos baseadas em arquivos regras expostas nesses diretório


    

