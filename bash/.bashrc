#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

##### ALIAS ######

## FS
alias ls='ls --color=auto'
alias ll='ls -la'
alias lsmap='gdmap -f `pwd`'

## 1A
alias 278='ssh dbenque@172.16.137.89'
## Git
alias gitAddModified='git status | grep "modified:" | awk "{print \$2}" | xargs git add'
source $HOME/.bash_git

## vscode
alias code='/usr/bin/visual-studio-code'


## Media
alias pdf='mupdf'

PS1='\[\e[0;29m\][\e[0;31m$?\e[0;29m] \[\e[0;33m\]\t \[\e[0;32m\]\u@\h:\[\e[1;34m\]\w\[\e[m\]\[\e[0;33m\]$(__git_ps1)\n\[\e[1;32m\]>\[\e[m\] '
#Golang related section
export GOPATH=/home/david/code/go

#Path
PATH=$PATH:~/bin:$GOPATH/bin
