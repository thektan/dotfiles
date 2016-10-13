#!/usr/bin/env bash

############################################################
# Git                                                      #
############################################################

alias gcee="git checkout ee-6.2.x"
alias gluee="git checkout ee-6.2.x && git pull upstream ee-6.2.x"
alias grbee="git rebase ee-6.2.x"
alias grlee="git checkout ee-6.2.x && git pull upstream ee-6.2.x && git checkout - && git rebase ee-6.2.x"
alias grbiee="git rebase -i ee-6.2.x"
alias gurbee="git pull upstream ee-6.2.x --rebase"


############################################################
# Node GH                                                  #
############################################################

alias ghp="gh pr"

alias ghb="gh pr --browser"
alias ghc="gh pr --comment"
alias ghi="gh pr --info"

alias ghs="submit_pull_request"
alias ghsee="submit_pull_request ee-6.2.x"
alias ghsjee="submit_pull_request ee-6.2.x jonmak08"
alias ghsm="submit_pull_request master"

alias ghsj="gh pr --submit jonmak08 --title ''"
alias ghsmeee="gh pr --submit thektan --branch ee-6.2.x --title"


############################################################
# Liferay projects                                         #
############################################################

# Directories
MASTER=~/Liferay/master/portal
MASTER_PLUGINS=~/Liferay/master/plugins
MASTER_CLEAN=~/Liferay/master-clean/portal

EE62X_PORTAL=~/Liferay/ee-6.2.x/portal
EE62X_PORTAL_CLEAN=~/Liferay/ee-6.2.x-clean/portal
EE62X_PLUGINS=~/Liferay/ee-6.2.x/plugins

TESTRAY=~/Liferay/ee-6.2.x/plugins/portlets/testray-portlet
TESTRAY_THEME=~/Liferay/ee-6.2.x/plugins/themes/testray-theme
TESTRAY_TOMCAT=~/Liferay/ee-6.2.x/bundles/tomcat/webapps/testray-portlet
TESTRAY_DASHBOARD=~/Liferay/ee-6.2.x/plugins/webs/testray-dashboard-web

SEARCH_PORTLET=~/Liferay/master/portal/modules/apps/foundation/portal-search/portal-search-web

# Check all source formatting in current directories
alias csf="find . | xargs check_sf"
alias sf="gradlew formatSource"

# Master - Portal
alias lrmp="cd $MASTER"
alias lrmpa="atom $MASTER"
alias lrmps="subl $MASTER"
alias lrmpf="open $MASTER"

# Master - Plugins
alias lrmpl="cd $MASTER_PLUGINS"
alias lrmpla="atom $MASTER_PLUGINS"
alias lrmpls="subl $MASTER_PLUGINS"
alias lrmplf="open $MASTER_PLUGINS"

# Master - Clean
alias lrmc="cd $MASTER_CLEAN"
alias lrmcf="open $MASTER_CLEAN"
alias lrmcu="cd $MASTER_CLEAN && git pull upstream master && ant all"

# EE-6.2.X - Portal
alias lreep="cd $EE62X_PORTAL"
alias lreepa="atom $EE62X_PORTAL"
alias lreeps="subl $EE62X_PORTAL"
alias lreepf="open $EE62X_PORTAL"

# EE-6.2.X - Plugins
alias lreepl="cd $EE62X_PLUGINS"
alias lreepla="atom $EE62X_PLUGINS"
alias lreeplf="open $EE62X_PLUGINS"

# EE-6.2.X - Clean
alias lreec="cd $EE62X_PORTAL_CLEAN"
alias lreeco="open $EE62X_PORTAL_CLEAN"
alias lreecu="cd $EE62X_PORTAL_CLEAN && git pull upstream ee-6.2.x && ant all"

# Testray Portlet
alias tro="cd $TESTRAY"
alias tra="atom $TESTRAY"
alias trs="subl $TESTRAY"
alias trf="open $TESTRAY"
alias trd="cd $TESTRAY && ant clean deploy"

alias trda="cd $TESTRAY && ant clean deploy && cd $TESTRAY_THEME && ant clean deploy"
alias trda-new="cd ~/Liferay/ee-6.2.x/plugins/portlets/marketplace-portlet && ant clean deploy && cd ~/Liferay/ee-6.2.x/plugins/hooks/portal-compat-hook && ant clean deploy && cd $TESTRAY && ant clean deploy && cd $TESTRAY_THEME && ant clean deploy"
alias trrt="cd ~/Liferay/ee-6.2.x/bundles/tomcat/webapps && rm -rfv testray-portlet"

# Testray Theme
alias trto="cd $TESTRAY_THEME"
alias trta="atom $TESTRAY_THEME"
alias trtf="open $TESTRAY_THEME"
alias trtd="cd $TESTRAY_THEME && ant clean deploy"

# Testray Dashboard
alias trdbo="cd $TESTRAY_DASHBOARD"
alias trdbd="cd $TESTRAY_DASHBOARD && ant clean deploy"

# Search Portlet
alias spo="cd $SEARCH_PORTLET"
alias spd="cd $SEARCH_PORTLET && gradle deploy"


############################################################
# Tomcat                                                   #
############################################################

# Start Tomcat server
alias stomcat="./catalina.sh run"
alias lrsm="cd ~/Liferay/master/bundles/tomcat/bin && ./catalina.sh run"
alias lrsmc="cd ~/Liferay/master-clean/bundles/tomcat/bin && ./catalina.sh run"
alias lrsee="mysql.server start && cd ~/Liferay/ee-6.2.x/bundles/tomcat/bin && ./catalina.sh run"
alias lrseec="cd ~/Liferay/ee-6.2.x-clean/bundles/tomcat/bin && ./catalina.sh run"

# Find specific processes
alias pj="ps -ef | grep java"
alias pt="ps -ef | grep bundles/tomcat/"

alias ptm='ps -ef | grep master/bundles/tomcat/ | grep java | awk '\''{print $2}'\'''
alias ptmc='ps -ef | grep master-clean/bundles/tomcat/ | grep java | awk '\''{print $2}'\'''
alias ptee='ps -ef | grep ee-6.2.x/bundles/tomcat/ | grep java | awk '\''{print $2}'\'''

# Kill processes
alias km="zshr && kill -9 $(ptm)"
alias kmc="zshr && kill -9 $(ptmc)"
alias kee="zshr && kill -9 $(ptee)"

# Kill and restart servers
alias kmr="zshr && kill -9 $(ptm) && lrsm"
alias kmcr="zshr && kill -9 $(ptmc) && lrsmc"
alias keer="zshr && kill -9 $(ptee) && lrsee"

alias killp="kill -9"


############################################################
# Misc                                                     #
############################################################

# Patching Tool
alias lpt="cd /Users/ktan/Liferay/ee-6.2.x/bundles/patching-tool && ./patching-tool.sh"

# Elastic Search
alias es="cd /Users/ktan/Liferay/testray/elasticsearch-2.3.5/bin && ./elasticsearch"
