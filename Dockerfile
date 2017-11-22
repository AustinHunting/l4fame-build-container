FROM debian:stretch

LABEL maintainer="Austin Hunting"
LABEL maintainer_email="austin.hunting@hpe.com"

RUN apt-get update && apt-get -y install git

CMD git clone https://github.com/coloroco/l4fame-build-container.git; \
    ( cd l4fame-build-container && git stash && git pull ); \
    ( cd l4fame-build-container && bash builder.bash );

