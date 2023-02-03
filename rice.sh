#!/bin/bash

rice(){

pacman -Syyu neovim vim i3 picom kitty i3blocks neofetch xwallpapers dmenu

## apps 

mv -r wallpapers ~/.config/

sleep 2 

cat configfiles/picomconf > /etc/xdg/picom.conf && echo "picom config added"
cat configfiles/i3conf > /etc/i3/config && echo "i3 config added added"
cat configfiles/i3bconf > /etc/i3blocks.conf && echo "i3 blocks config added"

## utiles 


sleep 2 

cat configfiles/bashrc > ~/.bashrc  && echo "bashrc added"
cat configfiles/xinitrc > ~/.xinitrc && echo "xinitrc added"

## custom scripts

sleep 2 

cp configfiles/dual /usr/local/bin && echo "duals monitor added"
cp configfiles/mirror /usr/local/bin && echo "mirror monitor added"
cp configfiles/apps /usr/local/bin && echo "apps added"
cp configfiles/muse /usr/local/bin && echo "muse added"
cp configfiles/walls /usr/local/bin && echo "walls added"

sleep 2

chmod +x /usr/local/bin/dual 
chmod +x /usr/local/bin/mirror
chmod +x /usr/local/bin/apps
chmod +x /usr/local/bin/muse
chmod +x /usr/local/bin/walls

## love notes
sleep 5 

echo "process complete: use 'startx' to start the xorg server and enter into i3wm"

}


while true; do
    read -p "Do you wish to experience the PRAY4ENEMY arch rice {y/n}" yn
    case $yn in
        [Yy]* ) rice; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
