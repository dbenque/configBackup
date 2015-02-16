#!/bin/bash

#get the path where tot sync, the directory hosting the script sync

D=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

#X11
P="$D/X11"
tosync=("$HOME/.xinitrc@@@$P/.xinitrc" "$HOME/.Xresources@@@$P/.Xresources")

#bash
P="$D/bash"
tosync=("${tosync[@]}" "$HOME/.bash_profile@@@$P/.bash_profile" "$HOME/.bashrc@@@$P/.bashrc" "$HOME/.bash_logout@@@$P/.bash_logout")

#i3
P="$D/i3"
tosync=("${tosync[@]}" "$HOME/.i3/config@@@$P/config" )

#conky
P="$D/conky"
tosync=("${tosync[@]}" "$HOME/.config/conky/conkyrc@@@$P/conkyrc" "$HOME/.config/conky/conky_grey.lua@@@$P/conky_grey.lua")

onechange=0

for entry in ${tosync[@]}
do
  param=$(echo $entry | sed -e 's/@@@/ /')
  diff $param &> /dev/null
  if [ $? -ne 0 ]
    then
    echo "Syncro: "$param
    cp -f $param
    onechange=1
  fi
done

if [ $onechange -ne 0 ]
  then
  cd $D
  git add --all
  git commit -am "Auto Synch"
  git push origin master
fi
