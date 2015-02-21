#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -la'

PS1='\[\e[0;33m\]\T \[\e[1;31m\]\u\[\e[0;32m\]@\h:\[\e[1;34m\]\w\[\e[m\]\n\[\e[1;32m\]>\[\e[m\]'
