#!/usr/bin/with-contenv bashio
set +u
REPOSITORY="$(bashio::config 'repository')"
bashio::log.info "Repository: $REPOSITORY"
bashio::log.info "Cloning…"
git clone $REPOSITORY /repository

bashio::log.info "Installing Packages…"
cd /repository
npm install

bashio::log.info "Starting Application…"
npm run start
