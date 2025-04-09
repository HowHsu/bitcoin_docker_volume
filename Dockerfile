FROM ubuntu:22.04

RUN apt update && apt install -y curl wget vim git net-tools iputils-ping build-essential cmake pkgconf libevent-dev libboost-dev libsqlite3-dev libzmq3-dev systemtap-sdt-dev

WORKDIR /work

CMD ["/bin/bash"]

