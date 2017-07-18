FROM debian:latest

LABEL maintainer="Austin Hunting"
LABEL maintainer_email="austin.hunting@hpe.com"

RUN apt-get update && apt-get -y install git
CMD git clone https://github.com/FabricAttachedMemory/l4fame-build-container.git; \
    cd FAMEBuildScript && \
    bash ./builder.bash

