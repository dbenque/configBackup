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

## Kube
source $HOME/.bash_k8s
source $HOME/bin/kcontext.sh

## gcloud
source $HOME/google-cloud-sdk/completion.bash.inc
source $HOME/google-cloud-sdk/path.bash.inc


## vscode
##alias vcode='/usr/bin/code --disable-gpu'
function vcode(){
/usr/bin/code --disable-gpu $1
}
## kubernetes
alias k='kubectl'

#GO
alias gopath='export GOPATH=`pwd`'

## Media
alias pdf='mupdf'

PS1='\[\e[0;29m\][\e[0;31m$?\e[0;29m] \[\e[0;33m\]\t $(__kube_ps1) \[\e[0;32m\]\u@\h:\[\e[1;34m\]\w\[\e[m\]\[\e[0;33m\]$(__git_ps1)\n\[\e[1;32m\]>\[\e[m\] '
#Golang related section
export GOPATH=/home/david/code/go
export GOROOT=/home/david/code/goroot

#Path
PATH=$PATH:~/bin:$GOROOT/bin:$GOPATH/bin

#Editor
EDITOR=vim
