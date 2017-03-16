#!/usr/bin/env bash

############################################################
# ZSH aliases
############################################################

alias ohmyzsh="subl ~/.oh-my-zsh"
alias zshc="subl ~/.zshrc"
alias zshr=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"
alias zshu="upgrade_oh_my_zsh"

############################################################
# Java                                                     #
############################################################

alias java7='export JAVA_HOME=$JAVA_7_HOME && java -version'
alias java8='export JAVA_HOME=$JAVA_8_HOME && java -version'

############################################################
# Dotfiles
############################################################

alias dfa="atom ~/.dotfiles"
alias dfs="subl ~/.dotfiles"
alias dfp="cd ~/.dotfiles && git push"
alias dfc="cd ~/.dotfiles"
alias dfl="cd ~/.dotfiles && git pull"

############################################################
# Build Tasks                                              #
############################################################

# Ant
alias aa="ant all"
alias ad="ant deploy"
alias acd="ant clean deploy"
alias atomcat="ant -f build-dist.xml unzip-tomcat"

# Gradle
alias gr="gradle"
alias grd="gradle deploy"
alias grcd="gradle clean deploy"

# Gulp
alias gub="gulp build"
alias gud="gulp deploy"
alias guw="gulp watch"

# Node
alias ns="node server"

# NPM
alias ni="npm install"

# Start server in current directory
alias pserver="python -m SimpleHTTPServer 8000"

############################################################
# Git aliases                                              #
############################################################

alias gbd="git branch -d"
alias gbD="git branch -D"
alias gcane="git commit --amend --no-edit"
alias gcaane="git commit --all --amend --no-edit"
alias gcleana="git clean -fd :/"
alias gco2="git checkout @{-2}"
alias gco3="git checkout @{-3}"
alias gco4="git checkout @{-4}"
alias gco5="git checkout @{-5}"
alias gcr="git checkout -"
alias grbim="git rebase -i master"
alias gbm="git branch -m"
alias ggpf="ggp -f"
alias gurbm="git pull upstream master --rebase"
alias grha="git reset --hard"
alias gql="git log --pretty=format:'%Cred%d %C(yellow)%<(8)%h %Creset%s %Cblue<%an> %Cgreen%<(10)(%cr)'"

############################################################
# Database aliases                                         #
############################################################

# MySQL
alias msql="mysql -u root -p"
alias msqls="mysql.server start"
alias msqle="mysql.server stop"

############################################################
# Misc aliases                                             #
############################################################

# Jump
alias j="jump"

# Git recent
alias gre="git recent"

# Jira
alias jo=open_jira_ticket;

# Get IP Address (Source: http://stackoverflow.com/a/13322549/5092054)
alias ip="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1' | pbcopy"

# Ranger
alias r="ranger"

# Open Screenshots folder
alias ss="open ~/Dropbox/Screenshots"

# Spotify
alias sp="spotify"
alias spc="spotify play uri spotify:user:125349885:playlist:146MpXfgHYUdOhxdUn1u6w"

# Open current finder window in sublime
alias sdf="s $(pfd)"

# Does the "Did you mean this?" command
eval "$(thefuck --alias oh)"