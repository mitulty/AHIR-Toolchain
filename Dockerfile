FROM ubuntu:trusty

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

RUN pip3 install --upgrade pynvim
RUN pip install --upgrade pynvim
RUN apt install -y exuberant-ctags

RUN apt install -y pylint
# 
# RUN span install node --channel=12/stable --classic

