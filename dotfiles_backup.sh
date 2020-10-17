#!/usr/bin/sh

HOME=/home/evilsocket

cd $HOME
cp -avr .vimrc $HOME/repo/dotfiles/
cp -avr .bashrc $HOME/repo/dotfiles/
cp -avr .Xresources $HOME/repo/dotfiles/
cp -avr .xinitrc $HOME/repo/dotfiles/
cp -avr .i3/ $HOME/repo/dotfiles/
cp -avr .dmenurc $HOME/repo/dotfiles/
cp -avr $HOME/scripts/dotfiles_backup.sh  $HOME/repo/dotfiles/
cp -avr $HOME/scripts/dotfiles_backup.service $HOME/repo/dotfiles/
cp -avr $HOME/scripts/add_auth_ovpn_files.sh  $HOME/repo/dotfiles/
cp -avr $HOME/scripts/update_nordvpn_servers.sh  $HOME/repo/dotfiles/

pacman -Qqen > $HOME/repo/dotfiles/pkglist.txt
yay -Qqen > $HOME/repo/dotfiles/yaylist.txt
