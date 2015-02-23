#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

##### ALIAS ######

## FS
alias ls='ls --color=auto'
alias ll='ls -la'

## Docker
alias dockerClean='docker ps -a | awk 'NR > 1 {print $1}' | xargs docker rm'


PS1='\[\e[0;33m\]\t \[\e[0;32m\]\u@\h:\[\e[1;34m\]\w\[\e[m\]\n\[\e[1;32m\]>\[\e[m\] '

#Golang related section
export GOPATH=/home/david/code/go

#Path
PATH=$PATH:~/bin:$GOPATH/bin
