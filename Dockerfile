FROM ubuntu:20.04
USER root

ENV PATH $PATH:/bin

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y \
    wget \
    curl \
    cmake \
    binutils \
    build-essential \
    libssl-dev \
    gdb \
    ltrace \
    strace \
    socat \ 
    gcc \
    g++ \
    radare2 \
    ruby \
    git \
    python3-pip

RUN gem install one_gadget

RUN git clone https://github.com/longld/peda.git ~/peda && \
    git clone https://github.com/scwuaptx/Pwngdb.git ~/Pwngdb && \
    cp ~/Pwngdb/.gdbinit ~/
RUN python3 -m pip install -U pip
RUN pip3 install pwntools