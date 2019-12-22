FROM ubuntu:16.04

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        build-essential g++-multilib git curl && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /opt/
RUN git clone https://github.com/kaimallea/demoinfogo-linux.git

WORKDIR /opt/demoinfogo-linux/
RUN make get_protobuf && make protobuf && make

WORKDIR /demos

ENTRYPOINT ["/opt/demoinfogo-linux/demoinfogo"]
