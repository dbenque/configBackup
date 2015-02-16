#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# ssh-agent
eval $(ssh-agent)
ssh-add ~/.ssh/id_rsa

# automatically start X server

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
