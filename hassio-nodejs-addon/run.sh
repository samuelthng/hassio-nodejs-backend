#!/usr/bin/with-contenv bashio
set +u

export CONFIG_VALUE=$(bashio::config 'some config here')
bashio::log.info "Test config value as ${CONFIG_VALUE}."

bashio::log.info "Starting service."
npm run start
