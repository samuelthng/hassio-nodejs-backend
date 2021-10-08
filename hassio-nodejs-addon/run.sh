#!/usr/bin/with-contenv bashio
set +u
node -v
npm -v
git --version

clone_repository() {
	bashio::log.info "Cloning $REPOSITORY…"
	git clone $REPOSITORY $REPO_DIR
}

REPO_DIR='/data/repository'
REPOSITORY="$(bashio::config 'repository')"
if [[ -d $REPO_DIR ]]
then
	cd $REPO_DIR
	$CURRENT_REMOTE="$(git config --get remote.origin.url)"
	if [[ $CURRENT_REMOTE == *$REPOSITORY* ]]
	then
		bashio::log.info "Repository already exists, pulling latest…"
		git fetch
		git pull
	else
		bashio::log.info "Repository has changed, purging directory…"
		cd /data
		rm -rf $REPO_DIR
		clone_repository()
	fi
else
	clone_repository()
fi

bashio::log.info "Installing Packages…"
cd $REPO_DIR
npm install

bashio::log.info "Starting Application…"
cd $REPO_DIR
npm run start
