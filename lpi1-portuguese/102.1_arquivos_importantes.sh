#!/bin/bash

# Dimensionar partições de disco
# No linux todos os sistemas de arquivos em partições são acessados por um processo chamado MONTAGEM
# sistema de arquivos de uma partição é vinculado a um DIRETÓRIO
# particionar = apenas reserva um espaço no disco
# depois de particionar tem que formatar com um algum File System
# arquivos tradicionais do linux - 0x83, Linux Native
# mínimo de duas partições. Uma raiz e outra de swap
# particão swap - 0x82
# via de regra o tamanho da partição swap é do dobro da memória ram
# Só começa a usar swap quando não tiver mais memória disponível

vi /etc/fstab
    # diz a estrutura que serão montados os dispositivos
    # esse arquivo tem que está na mesmo FS do dispositivo raiz

# Pontos de montagem

cd /var
    # fila de email, filas de impressão, tmp files, databases, log, arquivos alterados com frequência

cd /tmp
    # evita travaz a pasta raiz, pois cria aqui arquivos temporário

cd /home
    # diretórios e arquivos pessoais

cb/ boot
    # kernel e imagens do ramdisk inicial

cd /boot/esp 
cd /boot/efi   
    # sistema que usam UEFI. Tem que ser FAT12, FAT16 ou FAT32

cd /usr 
    # programas, bibliotecas, códigos-fonte, documentação

# LVM = logical Volume Manger
    # permite intergir com os dispositivos de maneira dinâmica. Recurso de snapshots.
    # LVM divido em : VG, PV, LV, PE, LE

# criando partições volume groups

pvcreate /dev/sdb1
pvcreate /dev/sdb2

vgcreate mylvm /dev/sdb1 /dev/sdb2
vgdispaly
    # info sobre o volume group criado

# criacao de volumes

lvcreate -L 500 mylvm
    # criao o lvol0 em /dev/mylvm/lvol10

mkfs -t ext2 /dev/sdb1
    # criador de filesystems