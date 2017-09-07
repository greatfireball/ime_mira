LABEL maintainer="frank.foerster@ime.fraunhofer.de"
LABEL description="Dockerfile providing the mira assembler"

FROM ubuntu:xenial

RUN apt update && apt install --yes make flex libgoogle-perftools-dev build-essential && apt install --yes libboost-doc libboost.*1.48-dev libboost.*1.48.0 libboost-thread*-dev
