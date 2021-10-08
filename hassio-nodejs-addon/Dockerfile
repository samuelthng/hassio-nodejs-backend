# Credits to Helmut Hoffer von Ankershoffen né Oertel
# https://github.com/helmut-hoffer-von-ankershoffen/hassio-ring-bridge
# For graciously sharing simple to understand boilerplate.

ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN apk add --no-cache \
    nodejs \
    npm

COPY . /
COPY index.js /
RUN cd / && npm install --unsafe-perm

COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
