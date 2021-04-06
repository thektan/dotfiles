# Setup for work devices

brew install ant
brew install mysql

brew install --cask intellij-idea
brew install --cask sequel-pro

brew tap adoptopenjdk/openjdk
brew install --cask adoptopenjdk8

# Symlink portal configurations
export LIFERAY_CONFIG_PATH=${HOME}/Developer/liferay-configs
export PORTAL_PATH=${HOME}/Developer/liferay-portal-master/portal
export PORTAL_BUNDLES=${HOME}/Developer/liferay-portal-master/bundles

ln -s ${LIFERAY_CONFIG_PATH}/app.server.ktan.properties ${PORTAL_PATH}/app.server.ktan.properties
ln -s ${LIFERAY_CONFIG_PATH}/build.ktan.properties ${PORTAL_PATH}/build.ktan.properties
ln -s ${LIFERAY_CONFIG_PATH}/portal-ext.properties ${PORTAL_BUNDLES}/portal-ext.properties
ln -s ${LIFERAY_CONFIG_PATH}/portal-setup-wizard.properties ${PORTAL_BUNDLES}/portal-setup-wizard.properties