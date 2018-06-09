FROM ubuntu

RUN mkdir /app && \
    apt-get update && \
    apt-get install -y wget gcc libz-dev maven && \
    rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/oracle/graal/releases/download/vm-1.0.0-rc2/graalvm-ce-1.0.0-rc2-linux-amd64.tar.gz && \
    tar -xvzf graalvm-ce-1.0.0-rc2-linux-amd64.tar.gz && \
    rm graalvm-ce-1.0.0-rc2-linux-amd64.tar.gz

ENV PATH=/graalvm-1.0.0-rc2/bin:$PATH

WORKDIR /app
