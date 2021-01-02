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
RUN apt-get -y install python-dev python-pip python3-dev
RUN python -m pip install --upgrade pynvim
RUN python3 -m pip install --upgrade pynvim
RUN apt install -y exuberant-ctags
RUN apt install -y autoconf

#Installing GHDL
RUN git clone "https://github.com/ghdl/ghdl.git" ghdl
RUN apt install -y gnat-gps
RUN apt-get install -y clang llvm
RUN  apt-get install -y libz-dev
RUN cd ghdl && mkdir build && cd build && ../configure --with-llvm-config --prefix=/usr/local && make && make install
RUN rm -rf ghdl
#AHIR Packages
ADD ./release /opt/tools
ENV AHIR_RELEASE="/opt/tools"
ENV PATH="/opt/tools/bin:$PATH"
ENV LD_LIBRARY_PATH="/opt/tools/lib:$LD_LIBRARY_PATH"
ENV LD_LIBRARY_PATH="/opt/tools/functionLibrary/lib:$LD_LIBRARY_PATH"
ENV AHIR_INC="/opt/tools/include"
ENV PATH="/opt/tools/clang_llvm/bin:$PATH"
ENV LD_LIBRARY_PATH="/opt/tools/clang_llvm/lib:$LD_LIBRARY_PATH"
RUN apt-get install -y g++-multilib
RUN apt-get install -y gcc-multilib 
RUN apt-get purge -y llvm
RUN apt autoremove -y
RUN pip3 install -U pylint
