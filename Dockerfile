FROM ubuntu:20.04

ENV PATH $PATH:/bin

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y tzdata
# timezone setting
ENV TZ=Asia/Tokyo

# base tools
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
    python3-pip \
    sudo \
    gcc-multilib \
    netcat

# steg
RUN apt-get update && \
    apt-get install -y \
    exiftool \
    steghide \
    foremost \
    pngcheck

# tor
RUN apt-get update && \
    apt-get install -y \
    torsocks

RUN gem install one_gadget
RUN python3 -m pip install -U pip
# pwn, rev, crypto
RUN pip3 install pwntools angr uncompyle6 decompyle3 pycrypto

RUN useradd -m -s /bin/bash ubuntu \
    && echo 'ubuntu ALL=(ALL) NOPASSWD:ALL' > /etc/sudoers.d/ubuntu

ENV HOME /home/ubuntu
WORKDIR /home/ubuntu
USER ubuntu

RUN git clone https://github.com/longld/peda.git /home/ubuntu/peda && \
    git clone https://github.com/scwuaptx/Pwngdb.git /home/ubuntu/Pwngdb && \
    cp /home/ubuntu/Pwngdb/.gdbinit /home/ubuntu/

# WIP
# RUN git clone https://github.com/zrax/pycdc.git
# WORKDIR /home/ubuntu/pycdc
# RUN cmake CMakeLists.txt && make

CMD ["bash"]
