#!/usr/bin/env bash

############################################################
# Environment Variables                                    #
############################################################

# Defining hostname for liferay properties file
export HOSTNAME=$(hostname)

# Setting ANT_OPS variable for ant command
export ANT_OPTS="-Xms2048m -Xmx4096m -XX:MaxPermSize=2048m"

test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh

############################################################
# Java                                                     #
############################################################

export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export JAVA_7_HOME=$(/usr/libexec/java_home -v1.7)

# Default java8
export JAVA_HOME=$JAVA_8_HOME