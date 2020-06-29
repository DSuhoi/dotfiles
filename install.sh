#!/bin/bash

while [ -n "$1" ]
do
case "$1" in
-b) sudo pacman -S i3wm i3-gaps i3status rofi vim rxvt-unicode pcmanfm feh lxappearance compton xorg-server xorg-xinit xorg-apps mesa-libgl lib32-mesa-libgl xterm xf86-video-intel ;;
-e) sudo pacman -S net-tools firefox libreoffice-fresh libreoffice-fresh-ru ttf-freefont ttf-linux-libertine ttf-hack ttf-font-awesome gimp unzip unrar p7zip vlc pulseaudio pulseaudio-alsa links ;;
-c) sudo pacman -S git gcc python jdk-openjdk geany ranger mc ;;
-y) 
   sudo pacman -S --needed base-devel git wget yajl
   cd /tmp
   git clone https://aur.archlinux.org/package-query.git
   cd package-query/
   makepkg -si
   cd ..
   git clone https://aur.archlinux.org/yaourt.git
   cd yaourt/
   makepkg -si
   cd ..
   sudo rm -dR yaourt/ package-query/ ;;
-vsc)
   sudo pacman -S --needed base-devel git
   cd /tmp
   git clone https://AUR.archlinux.org/visual-studio-code-bin.git
   cd visual-studio-code-bin/
   makepkg -si
   cd ../ && sudo rm -rfv visual-studio-code-bin/ ;;  
-h)
   echo "-b   --Base installation"
   echo "-e   --Extra installation"
   echo "-c   --Dev. installation" 
   echo "-y   --AUR installation"
   echo "-vsc --VS Code instalation" ;;
*) echo "--parametr ???" ;;
esac
shift
done
