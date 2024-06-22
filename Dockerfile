FROM ubuntu:22.04

WORKDIR /workspace

RUN apt-get update && \
    apt-get install -y wget g++ openjdk-11-jdk && \
    wget https://ferret-lang.org/builds/ferret -O /usr/local/bin/ferret && \
    chmod +x /usr/local/bin/ferret

WORKDIR /code

COPY bin .

CMD "./run.sh"