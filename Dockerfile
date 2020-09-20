FROM ubuntu:trusty

# installing development tools 


RUN apt-get update && apt-get install -y build-essential  \
 git  \
 vim


RUN apt install -y snapd
RUN snap install --edge nvim --classic
RUN ln -s /snap/bin/nvim /usr/bin/nvim

RUN apt install -y python3 \
    python3-pip

RUN pip3 install --upgrade pynvim
RUN pip install --upgrade pynvim
RUN apt install -y exuberant-ctags

RUN apt install -y pylint

RUN span install node --channel=12/stable --classic

