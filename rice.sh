#!/bin/bash

rice(){

pacman -Syyu neovim vim i3 picom kitty i3blocks neofetch xwallpapers dmenu

## apps 

cat $PWD/.picomconf >> /etc/xdg/picom.conf && echo "picom config added"
cat $PWD/.i3conf >> /etc/i3/config && echo "i3 config added added"
cat $PWD/.i3bconf >> /etc/i3blocks.conf && echo "i3 blocks config added"

## utiles 

cat $PWD/.bashrc >> $HOME/.bashrc  && echo "bashrc added"
cat $PWD/.xinitrc >> $HOME/.xinitrc && echo "xinitrc added"

## custom scripts

cp $PWD/duals /usr/local/bin && echo "duals monitor added"
cp $PWD/mirror /usr/local/bin && echo "mirror monitor added"
cp $PWD/apps /usr/local/bin && echo "apps added"
cp $PWD/muse /usr/local/bin && echo "muse added"

## love notes

echo "process complete: use 'startx' to start the xorg server and enter into i3wm"

}


while true; do
    read -p "Do you wish to experience the PRAY4ENEMY arch rice" yn
    case $yn in
        [Yy]* ) rice; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
