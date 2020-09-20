# AHIR-Toolchain
This repository provides a docker implementation for the AHIR Toolchain.
AhirV2 is a set of tools which can convert a C description of a system to an
equivalent hardware implementation (described in VHDL). Using these tools,
it is possible to take an algorithmic approach to the design of hardware.



## Building and running
Install docker by visiting docs.docker.com

Copy dockerfile and launch file to a directory On that directory open a terminal and build docker

```docker build -t ahir_dev .```

Launch the container using ```./launch.sh```

Launch file binds the container file system to host file system using bind command and etc/passed file. All the users of the host system will be available in container as well Use command su - <username> in the containers terminal before creating files so that the files will be created in users home directory in the host system
