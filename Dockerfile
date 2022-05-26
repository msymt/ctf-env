FROM ubuntu:20.04

ENV PATH $PATH:/bin

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y tzdata
# timezone setting
ENV TZ=Asia/Tokyo

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

RUN apt-get update && \
    apt-get install -y \
    exiftool \
    steghide \
    foremost \
    pngcheck

RUN gem install one_gadget
RUN python3 -m pip install -U pip
RUN pip3 install pwntools angr uncompyle6 decompyle3

RUN useradd -m -s /bin/bash ubuntu \
    && echo 'ubuntu ALL=(ALL) NOPASSWD:ALL' > /etc/sudoers.d/ubuntu

ENV HOME /home/ubuntu
WORKDIR /home/ubuntu
USER ubuntu

RUN git clone https://github.com/longld/peda.git /home/ubuntu/peda && \
    git clone https://github.com/scwuaptx/Pwngdb.git /home/ubuntu/Pwngdb && \
    cp /home/ubuntu/Pwngdb/.gdbinit /home/ubuntu/

CMD ["bash"]
