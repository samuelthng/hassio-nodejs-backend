#!/usr/bin/with-contenv bashio
set +u
node -v
npm -v
git --version

REPOSITORY="$(bashio::config 'repository')"
bashio::log.info "Cloning $REPOSITORY…"
git clone $REPOSITORY /data

bashio::log.info "Installing Packages…"
cd /data
npm install

bashio::log.info "Starting Application…"
npm run start
