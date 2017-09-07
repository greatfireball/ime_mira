LABEL maintainer="frank.foerster@ime.fraunhofer.de"
LABEL description="Dockerfile providing the mira assembler"

FROM ubuntu:xenial

RUN apt update && apt install --yes make flex libgoogle-perftools-dev build-essential && apt install --yes libboost-doc libboost.*1.48-dev libboost.*1.48.0 libboost-thread*-dev

RUN apt install --yes wget bzip2

RUN wget -O /tmp/mira.tar.bz2 https://sourceforge.net/projects/mira-assembler/files/MIRA/stable/mira-4.0.2.tar.bz2/download && cd /tmp/ && tar xjf mira.tar.bz2 && rm mira.tar.bz2
