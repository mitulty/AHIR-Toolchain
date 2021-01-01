FROM ubuntu:18.04

# installing development tools 


RUN apt-get update && apt-get install -y build-essential  \
 git  \
 vim

# RUN ln -s /snap/bin/nvim /usr/bin/nvim
# 
RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:neovim-ppa/unstable -y
RUN apt-get update
RUN apt-get install -y neovim
RUN apt install -y python3 \
    python3-pip \
    python-pip

#RUN apt-get install -y python3-neovim
RUN apt-get -y install python-dev python-pip python3-dev python3-pip
RUN python -m pip install --upgrade pynvim
RUN python3 -m pip install --upgrade pynvim
RUN apt install -y exuberant-ctags

RUN apt install -y pylint
# 
# RUN span install node --channel=12/stable --classic
#Installing GHDL
RUN git clone "https://github.com/ghdl/ghdl.git" ghdl
RUN cd ghdl
RUN mkdir build
RUN cd build
RUN  ../configure --with-llvm-config --prefix=/usr/local
RUN make
RUN make install
#AHIR Packages
