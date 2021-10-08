#!/usr/bin/with-contenv bashio
set +u
node -v
npm -v
git --version

REPOSITORY="$(bashio::config 'repository')"
bashio::log.info "Cloning $REPOSITORY…"
git clone $REPOSITORY /repository

bashio::log.info "Installing Packages…"
cd /repository
npm install

bashio::log.info "Starting Application…"
npm run start
