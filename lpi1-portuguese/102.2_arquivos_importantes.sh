#!/bin/bash

# Instalador e gerenciador de inicialização = GRUB 
# Responsável por carregar o kernel do linux
# GRUB legaly -> GRUB2

# GRUB Legacy (Grand Unified Bootloader)

grub-install
vi /boot/grub/menu.lst 
    # info para instalar o grub
    # opções: default, timeout, title, root, kenrel, ro, initrd
    # não precisa reinstalar o grub toda vez que altera esse arquivo

# GRUB2
# melhorias: suporte a scripts com condicionais e funções, carremento dinâmico de módulos
    # menu personalizados, superte a UEFI, identificação por UUID
# ausência do arquivo /boot/grub/menu.lst

vi /boot/grub/grub.cfb  # vi /boot/grub2/grub.cfb 
    # subtitui o /boot/grub/menu.lst
    # comandos possíveis: linux, initrd, chainloader, cryptomount, source, insmod
vi /etc/default/grub
    # principal arquivo de configuração
    # apartir desse arquivo gera o /boot/grub/grub.cfb
    # opções: GRUB_DEFAULT, GRUB_SAVEDEFAULT, GRUB_HIDDEN_TIMEOUT, GRUB_TIMEOUT
    # GRUB_DISTRIBUTOR, GRUB_CMDLINE_LINUX, GRUB_DISABLE_LINUX_UUID, GRUB_GFXMODE
    # GRUB_DISABLE_LINUX_RECOVERY, GRUB_INIT_TUNE, GRUB_DISABLE_OS_PROBER

cd /etc/grub.d/.
    # arquivos com configurações avançadas

grub-install /dev/sda
    # instalar o grub (gerenciador de boot)
apt-gt install efiboot-mgr
grub-install --efi-directory=/boot/efi --bootloader-id=Linux
cd/boot/efi
    # diretório onde fica a partição ESP (EFI system partition)
update-grub 
    # para pegar as alterações feitas no /etc/default/grub
grub-mkconfig -o /boot/grub/grub.cfg
grub2-mkconfig -o /boot/grub2/grub.cfg
    # esses 2 comandos fazem a mesma coisa que update-grub

dd if=/dev/hda of=mbr.backup bs=512 count=1
    # criar um cópia da MBR (Registro Mestre de Inicialização)
dd if=mbr.backup of=/dev/hda
    # restaurar a cópia da MBR (Master Boot Record)


