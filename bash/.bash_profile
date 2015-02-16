#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# automatically start X server

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

