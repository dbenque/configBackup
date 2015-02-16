#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -la'

#PS1='[\u@\h \W]\$ '
#PS1='\[\e[0;32m\]\u \[\e[0;33m\]\T \[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\n>\[\e[m\] '
PS1='\[\e[0;33m\]\T \[\e[0;32m\]\u@\h:\[\e[1;34m\]\w\[\e[m\]\n\[\e[1;32m\]>\[\e[m\] '

#Golang related section
export GOPATH=/home/david/code/go

