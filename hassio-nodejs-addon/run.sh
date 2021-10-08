#!/usr/bin/with-contenv bashio
set +u
node -v
npm -v
git --version

REPOSITORY="$(bashio::config 'repository')"
bashio::log.info "Cloning $REPOSITORY…"
git clone $REPOSITORY /data/repository
cd /data/repository

bashio::log.info "Installing Packages…"
npm install

bashio::log.info "Starting Application…"
npm run start
