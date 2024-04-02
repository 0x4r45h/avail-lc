FROM debian:stable-slim
RUN apt-get update && apt-get install -y \
    curl \
    nano \
    jq \
    dnsutils \
    iputils-ping \
    && apt-get clean
WORKDIR /root/avail
COPY avail-light /usr/local/bin/
RUN chmod u+x /usr/local/bin/avail-light
ENTRYPOINT ["avail-light"]