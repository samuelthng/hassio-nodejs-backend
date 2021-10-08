#!/usr/bin/with-contenv bashio
set +u
node -v
npm -v
bashio::log.info "Starting Application…"
npm run start
