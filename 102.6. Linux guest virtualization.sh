#!/bin/bash

<<Virtualization
102.6. LINUX AS GUEST VIRTUALIZATION

-> Virtual Machine

App				App				App

Binaries/		Binaries/		Binaries/
Libraries		Libraries		Libraries

Guest 			Guest 			Guest
OS				OS				OS
				
			HYPERVISOR

			HOST OS

			Server Hardware

-> LXC / LXD

App				App				App

Binaries/		Binaries/		Binaries/
Libraries		Libraries		Libraries

			HOST OS

			Server Hardware


-> DIFFERENCE between container and virtual machine

	-> Contaniner is a lightwaight, isolated silo for runnig and application on the host operation system.
			Containers are bases on the host operation system kernel and contains only applications and some
			light operating systems APIs that run is a user mode.

	-> Virtual Machines run a complete operating system including the kernel it self.
Virtualization




