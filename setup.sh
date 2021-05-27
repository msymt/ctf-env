#!/bin/sh

sudo apt-get update 
sudo apt-get -y upgrade && \
sudo apt-get install -y \
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
    python3-pip \
    sudo \
    gcc-multilib

sudo gem install one_gadget
sudo python3 -m pip install -U pip
sudo pip3 install pwntools

git clone https://github.com/longld/peda.git ~/peda
git clone https://github.com/scwuaptx/Pwngdb.git ~/Pwngdb
cp /home/ubuntu/Pwngdb/.gdbinit ~/