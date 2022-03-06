#!/bin/bash

# Virtualização = executar mais de um sistema operacional em uma mesmo computador

# KVM - Kernel-Based Virtual Machine 
    # conceito de hypervisor
    # sistema host e guest
    # Pode instalar um linux em um windows

# LXC -Linux Conteiners
    # virtualização no nível sistems operacional
    # processos do container ficam isolados dos processos do anfitrião
    # host e guest tem que ter linux
    # Docker
    # IaaS = Infraestructure as a Service
    # UUID D-BUS de sistemas clonados devem ser diferentes
vi /var/lib/dbus/machine-id
    # UUID D-BUS deve ser único para cada instância do SO
