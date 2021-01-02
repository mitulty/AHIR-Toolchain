# AHIR-Toolchain
This project provides a docker image for the AHIR Toolchain.
AhirV2 is a set of tools that can convert a C Language/Aa Language description of a system to an
equivalent hardware implementation (described in VHDL). Using these tools,
it is possible to take an algorithmic approach to the design of the hardware.



## Building and running
Install docker by visiting docs.docker.com or running the script setup-docker.sh.
Clone the folder to a directory and follow the commands below to build and run.
On that directory open a terminal and build the docker image using the command:

```sudo docker build -t ahir_dev .```

Launch the container using ```sudo ./launch.sh```

Launch file binds the container file system to host file system using bind command and etc/passed file. All the users of the host system will be available in container as well. Use command su - <username> in the containers terminal before creating files so that the files can be created in users home directory in the host system.
