#!/bin/sh

img="$HOME/Pictures/wallpapers/arch-logo-wallpaper.jpg"

scrot $img
convert $img -scale 10% -scale 1000% $img

i3lock -u -i $img
