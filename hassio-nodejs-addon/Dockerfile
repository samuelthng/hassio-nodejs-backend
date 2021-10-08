# Credits to Helmut Hoffer von Ankershoffen né Oertel
# https://github.com/helmut-hoffer-von-ankershoffen/hassio-ring-bridge
# For graciously sharing simple to understand boilerplate.

ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN apk add --no-cache \
    nodejs \
    npm \
    git

RUN bashio::log.info "Cloning $(bashio::config 'repository')…" \
    mkdir /repository \
    git clone $(bashio::config 'repository') /repository \
    cd /repository

WORKDIR /repository

RUN bashio::log.info "Installing npm packages…" \
    npm install

COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
