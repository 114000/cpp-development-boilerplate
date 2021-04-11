FROM ubuntu:trusty


RUN apt-get update
RUN apt-get install -y software-properties-common python-software-properties
RUN add-apt-repository ppa:ubuntu-toolchain-r/test
RUN apt-get update

RUN apt-get install gcc-4.9 g++-4.9 cmake gdb gdbserver -y  && \
    apt-get clean autoclean && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*
    
RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.9 999 \
 && update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.9 999 \
 && update-alternatives --install /usr/bin/cc  cc  /usr/bin/gcc-4.9 999 \
 && update-alternatives --install /usr/bin/c++ c++ /usr/bin/g++-4.9 999

RUN useradd -ms /bin/bash develop
RUN echo "develop   ALL=(ALL:ALL) ALL" >> /etc/sudoers

# for gdbserver
EXPOSE 2000

USER develop

VOLUME "/home/develop/project"
WORKDIR "/home/develop/project"

# install dep

USER root

COPY ./install-deps.sh /usr/

RUN chmod +x /usr/install-deps.sh

RUN apt-get update

RUN /usr/install-deps.sh

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

USER develop

EXPOSE 7080